.class public final enum Lcom/evernote/android/job/p;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/evernote/android/job/p;

.field public static final enum b:Lcom/evernote/android/job/p;

.field private static final synthetic c:[Lcom/evernote/android/job/p;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/evernote/android/job/p;

    const-string/jumbo v1, "LINEAR"

    invoke-direct {v0, v1, v2}, Lcom/evernote/android/job/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evernote/android/job/p;->a:Lcom/evernote/android/job/p;

    new-instance v0, Lcom/evernote/android/job/p;

    const-string/jumbo v1, "EXPONENTIAL"

    invoke-direct {v0, v1, v3}, Lcom/evernote/android/job/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evernote/android/job/p;->b:Lcom/evernote/android/job/p;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/evernote/android/job/p;

    sget-object v1, Lcom/evernote/android/job/p;->a:Lcom/evernote/android/job/p;

    aput-object v1, v0, v2

    sget-object v1, Lcom/evernote/android/job/p;->b:Lcom/evernote/android/job/p;

    aput-object v1, v0, v3

    sput-object v0, Lcom/evernote/android/job/p;->c:[Lcom/evernote/android/job/p;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evernote/android/job/p;
    .locals 1

    const-class v0, Lcom/evernote/android/job/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/p;

    return-object v0
.end method

.method public static values()[Lcom/evernote/android/job/p;
    .locals 1

    sget-object v0, Lcom/evernote/android/job/p;->c:[Lcom/evernote/android/job/p;

    invoke-virtual {v0}, [Lcom/evernote/android/job/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evernote/android/job/p;

    return-object v0
.end method