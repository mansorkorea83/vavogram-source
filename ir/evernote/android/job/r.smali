.class public final enum Lcom/evernote/android/job/r;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/evernote/android/job/r;

.field public static final enum b:Lcom/evernote/android/job/r;

.field public static final enum c:Lcom/evernote/android/job/r;

.field private static final synthetic d:[Lcom/evernote/android/job/r;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/evernote/android/job/r;

    const-string/jumbo v1, "ANY"

    invoke-direct {v0, v1, v2}, Lcom/evernote/android/job/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evernote/android/job/r;->a:Lcom/evernote/android/job/r;

    new-instance v0, Lcom/evernote/android/job/r;

    const-string/jumbo v1, "CONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/evernote/android/job/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evernote/android/job/r;->b:Lcom/evernote/android/job/r;

    new-instance v0, Lcom/evernote/android/job/r;

    const-string/jumbo v1, "UNMETERED"

    invoke-direct {v0, v1, v4}, Lcom/evernote/android/job/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evernote/android/job/r;->c:Lcom/evernote/android/job/r;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/evernote/android/job/r;

    sget-object v1, Lcom/evernote/android/job/r;->a:Lcom/evernote/android/job/r;

    aput-object v1, v0, v2

    sget-object v1, Lcom/evernote/android/job/r;->b:Lcom/evernote/android/job/r;

    aput-object v1, v0, v3

    sget-object v1, Lcom/evernote/android/job/r;->c:Lcom/evernote/android/job/r;

    aput-object v1, v0, v4

    sput-object v0, Lcom/evernote/android/job/r;->d:[Lcom/evernote/android/job/r;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evernote/android/job/r;
    .locals 1

    const-class v0, Lcom/evernote/android/job/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/r;

    return-object v0
.end method

.method public static values()[Lcom/evernote/android/job/r;
    .locals 1

    sget-object v0, Lcom/evernote/android/job/r;->d:[Lcom/evernote/android/job/r;

    invoke-virtual {v0}, [Lcom/evernote/android/job/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evernote/android/job/r;

    return-object v0
.end method
