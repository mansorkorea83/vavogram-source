.class Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$2;
.super Ljava/lang/Object;
.source "ManifestFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->notifyManifestRefreshed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$2;->this$0:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$2;->this$0:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    #getter for: Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->eventListener:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$EventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->access$000(Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;)Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$EventListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$EventListener;->onManifestRefreshed()V

    return-void
.end method
