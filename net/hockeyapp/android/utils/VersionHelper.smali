.class public Lnet/hockeyapp/android/utils/VersionHelper;
.super Ljava/lang/Object;
.source "VersionHelper.java"


# static fields
.field public static final VERSION_MAX:Ljava/lang/String; = "99.0"


# instance fields
.field private mCurrentVersionCode:I

.field private mListener:Lnet/hockeyapp/android/UpdateInfoListener;

.field private mNewest:Lorg/json/JSONObject;

.field private mSortedVersions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/UpdateInfoListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mListener:Lnet/hockeyapp/android/UpdateInfoListener;

    invoke-direct {p0, p1, p2}, Lnet/hockeyapp/android/utils/VersionHelper;->loadVersions(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lnet/hockeyapp/android/utils/VersionHelper;->sortVersions()V

    return-void
.end method

.method public static compareVersionStrings(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v7, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v5, v7

    :cond_1
    :goto_0
    return v5

    :cond_2
    :try_start_0
    new-instance v1, Ljava/util/Scanner;

    const-string/jumbo v8, "\\-.*"

    const-string/jumbo v9, ""

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Scanner;

    const-string/jumbo v8, "\\-.*"

    const-string/jumbo v9, ""

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "\\."

    invoke-virtual {v1, v8}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    const-string/jumbo v8, "\\."

    invoke-virtual {v3, v8}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    :cond_3
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextInt()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v3}, Ljava/util/Scanner;->hasNextInt()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Ljava/util/Scanner;->nextInt()I

    move-result v2

    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I

    move-result v4

    if-lt v2, v4, :cond_1

    if-le v2, v4, :cond_3

    move v5, v6

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextInt()Z

    move-result v8

    if-eqz v8, :cond_5

    move v5, v6

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Ljava/util/Scanner;->hasNextInt()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    move v5, v7

    goto :goto_0

    :catch_0
    move-exception v0

    move v5, v7

    goto :goto_0
.end method

.method private static failSafeGetLongFromJSON(Lorg/json/JSONObject;Ljava/lang/String;J)J
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    :goto_0
    return-wide p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static failSafeGetStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    :goto_0
    return-object p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getRestoreButton(ILorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lnet/hockeyapp/android/utils/VersionHelper;->getVersionID(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<a href=\'restore:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'  style=\'background: #c8c8c8; color: #000; display: block; float: right; padding: 7px; margin: 0px 10px 10px; text-decoration: none;\'>Restore</a>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getSeparator()Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "<hr style=\'border-top: 1px solid #c8c8c8; border-bottom: 0px; margin: 40px 10px 0px 10px;\' />"

    return-object v0
.end method

.method private getVersionCode(Lorg/json/JSONObject;)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "version"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getVersionID(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    :try_start_0
    const-string/jumbo v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getVersionLine(ILorg/json/JSONObject;)Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mNewest:Lorg/json/JSONObject;

    invoke-direct {p0, v4}, Lnet/hockeyapp/android/utils/VersionHelper;->getVersionCode(Lorg/json/JSONObject;)I

    move-result v0

    invoke-direct {p0, p2}, Lnet/hockeyapp/android/utils/VersionHelper;->getVersionCode(Lorg/json/JSONObject;)I

    move-result v2

    invoke-direct {p0, p2}, Lnet/hockeyapp/android/utils/VersionHelper;->getVersionName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "<div style=\'padding: 20px 10px 10px;\'><strong>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const-string/jumbo v4, "Newest version:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    const-string/jumbo v4, "</strong></div>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v2, v0, :cond_0

    iget v4, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mCurrentVersionCode:I

    if-ne v2, v4, :cond_0

    const/4 v4, -0x1

    iput v4, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mCurrentVersionCode:I

    const-string/jumbo v4, "[INSTALLED]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getVersionName(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    :try_start_0
    const-string/jumbo v1, "shortversion"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getVersionNotes(ILorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notes"

    const-string/jumbo v3, ""

    invoke-static {p2, v2, v3}, Lnet/hockeyapp/android/utils/VersionHelper;->failSafeGetStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "<div style=\'padding: 0px 10px;\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "<em>No information.</em>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v2, "</div>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static isNewerThanLastUpdateTime(Landroid/content/Context;J)Z
    .locals 13

    const/4 v6, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v10, 0x708

    add-long v4, v8, v10

    cmp-long v7, p1, v4

    if-lez v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private loadVersions(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    iput-object v8, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mNewest:Lorg/json/JSONObject;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mSortedVersions:Ljava/util/ArrayList;

    iget-object v8, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mListener:Lnet/hockeyapp/android/UpdateInfoListener;

    invoke-interface {v8}, Lnet/hockeyapp/android/UpdateInfoListener;->getCurrentVersionCode()I

    move-result v8

    iput v8, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mCurrentVersionCode:I

    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mListener:Lnet/hockeyapp/android/UpdateInfoListener;

    invoke-interface {v8}, Lnet/hockeyapp/android/UpdateInfoListener;->getCurrentVersionCode()I

    move-result v4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_4

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v8, "version"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-le v8, v4, :cond_2

    move v2, v6

    :goto_1
    const-string/jumbo v8, "version"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v4, :cond_3

    const-string/jumbo v8, "timestamp"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lnet/hockeyapp/android/utils/VersionHelper;->isNewerThanLastUpdateTime(Landroid/content/Context;J)Z

    move-result v8

    if-eqz v8, :cond_3

    move v3, v6

    :goto_2
    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    iput-object v0, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mNewest:Lorg/json/JSONObject;

    const-string/jumbo v8, "version"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    :cond_1
    iget-object v8, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mSortedVersions:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v2, v7

    goto :goto_1

    :cond_3
    move v3, v7

    goto :goto_2

    :catch_0
    move-exception v6

    :cond_4
    :goto_3
    return-void

    :catch_1
    move-exception v6

    goto :goto_3
.end method

.method public static mapGoogleVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string/jumbo v0, "L"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo p0, "5.0"

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    const-string/jumbo v0, "M"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo p0, "6.0"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "N"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo p0, "7.0"

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "^[a-zA-Z]+"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p0, "99.0"

    goto :goto_0
.end method

.method private sortVersions()V
    .locals 2

    iget-object v0, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mSortedVersions:Ljava/util/ArrayList;

    new-instance v1, Lnet/hockeyapp/android/utils/VersionHelper$1;

    invoke-direct {v1, p0}, Lnet/hockeyapp/android/utils/VersionHelper$1;-><init>(Lnet/hockeyapp/android/utils/VersionHelper;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public getFileDateString()Ljava/lang/String;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    iget-object v4, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mNewest:Lorg/json/JSONObject;

    const-string/jumbo v5, "timestamp"

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lnet/hockeyapp/android/utils/VersionHelper;->failSafeGetLongFromJSON(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v2

    new-instance v0, Ljava/util/Date;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v2

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "dd.MM.yyyy"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getFileSizeBytes()J
    .locals 8

    const-wide/16 v6, 0x0

    iget-object v3, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mNewest:Lorg/json/JSONObject;

    const-string/jumbo v4, "external"

    const-string/jumbo v5, "false"

    invoke-static {v3, v4, v5}, Lnet/hockeyapp/android/utils/VersionHelper;->failSafeGetStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mNewest:Lorg/json/JSONObject;

    const-string/jumbo v4, "appsize"

    invoke-static {v3, v4, v6, v7}, Lnet/hockeyapp/android/utils/VersionHelper;->failSafeGetLongFromJSON(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    if-eqz v2, :cond_0

    cmp-long v3, v0, v6

    if-nez v3, :cond_0

    const-wide/16 v0, -0x1

    :cond_0
    return-wide v0
.end method

.method public getReleaseNotes(Z)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<html>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "<body style=\'padding: 0px 0px 20px 0px\'>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iget-object v3, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mSortedVersions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    if-lez v0, :cond_0

    invoke-direct {p0}, Lnet/hockeyapp/android/utils/VersionHelper;->getSeparator()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-direct {p0, v0, v2}, Lnet/hockeyapp/android/utils/VersionHelper;->getRestoreButton(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-direct {p0, v0, v2}, Lnet/hockeyapp/android/utils/VersionHelper;->getVersionLine(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v2}, Lnet/hockeyapp/android/utils/VersionHelper;->getVersionNotes(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "</body>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "</html>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getVersionString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mNewest:Lorg/json/JSONObject;

    const-string/jumbo v2, "shortversion"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lnet/hockeyapp/android/utils/VersionHelper;->failSafeGetStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mNewest:Lorg/json/JSONObject;

    const-string/jumbo v2, "version"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lnet/hockeyapp/android/utils/VersionHelper;->failSafeGetStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
