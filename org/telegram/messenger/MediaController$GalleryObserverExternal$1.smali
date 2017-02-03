.class Lorg/telegram/messenger/MediaController$GalleryObserverExternal$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController$GalleryObserverExternal;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MediaController$GalleryObserverExternal;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController$GalleryObserverExternal;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MediaController$GalleryObserverExternal$1;->this$1:Lorg/telegram/messenger/MediaController$GalleryObserverExternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$GalleryObserverExternal$1;->this$1:Lorg/telegram/messenger/MediaController$GalleryObserverExternal;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$GalleryObserverExternal;->this$0:Lorg/telegram/messenger/MediaController;

    const/4 v1, 0x0

    #setter for: Lorg/telegram/messenger/MediaController;->refreshGalleryRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->access$1402(Lorg/telegram/messenger/MediaController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    return-void
.end method
