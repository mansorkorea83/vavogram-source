.class public Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;
.super Ljava/lang/Object;
.source "SmoothStreamingManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProtectionElement"
.end annotation


# instance fields
.field public final data:[B

.field public final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;->uuid:Ljava/util/UUID;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;->data:[B

    return-void
.end method
