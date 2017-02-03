.class Lorg/telegram/messenger/MediaController$22$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController$22;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController$22;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MediaController$22$1;->this$0:Lorg/telegram/messenger/MediaController$22;

    iput p2, p0, Lorg/telegram/messenger/MediaController$22$1;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$22$1;->this$0:Lorg/telegram/messenger/MediaController$22;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$22;->val$finalProgress:Landroid/app/ProgressDialog;

    iget v2, p0, Lorg/telegram/messenger/MediaController$22$1;->val$progress:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
