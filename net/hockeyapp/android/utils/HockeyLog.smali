.class public Lnet/hockeyapp/android/utils/HockeyLog;
.super Ljava/lang/Object;
.source "HockeyLog.java"


# static fields
.field public static final HOCKEY_TAG:Ljava/lang/String; = "HockeyApp"

.field private static sLogLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    sput v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getLogLevel()I
    .locals 1

    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    return v0
.end method

.method public static info(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static sanitizeTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-le v0, v1, :cond_1

    :cond_0
    const-string/jumbo p0, "HockeyApp"

    :cond_1
    return-object p0
.end method

.method public static setLogLevel(I)V
    .locals 0

    sput p0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    return-void
.end method

.method public static verbose(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
