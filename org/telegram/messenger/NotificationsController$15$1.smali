.class Lorg/telegram/messenger/NotificationsController$15$1;
.super Ljava/lang/Object;
.source "NotificationsController.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/NotificationsController$15;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationsController$15;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$15$1;->this$1:Lorg/telegram/messenger/NotificationsController$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7

    const/high16 v2, 0x3f80

    if-nez p3, :cond_0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    move v1, p2

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_0
    return-void
.end method
