.class public final Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;
.super Ljava/lang/Object;
.source "ChunkOperationHolder.java"


# instance fields
.field public chunk:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

.field public endOfStream:Z

.field public queueSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->chunk:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->endOfStream:Z

    return-void
.end method
