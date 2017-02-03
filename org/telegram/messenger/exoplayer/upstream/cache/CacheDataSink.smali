.class public final Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;
.super Ljava/lang/Object;
.source "CacheDataSink.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/upstream/DataSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink$CacheDataSinkException;
    }
.end annotation


# instance fields
.field private final cache:Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;

.field private dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

.field private dataSpecBytesWritten:J

.field private file:Ljava/io/File;

.field private final maxCacheFileSize:J

.field private outputStream:Ljava/io/FileOutputStream;

.field private outputStreamBytesWritten:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->cache:Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;

    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->maxCacheFileSize:J

    return-void
.end method

.method private closeCurrentOutputStream()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->outputStream:Ljava/io/FileOutputStream;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->outputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->outputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->outputStream:Ljava/io/FileOutputStream;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/Util;->closeQuietly(Ljava/io/OutputStream;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->cache:Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->file:Ljava/io/File;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;->commitFile(Ljava/io/File;)V

    :goto_1
    iput-object v4, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->outputStream:Ljava/io/FileOutputStream;

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->file:Ljava/io/File;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->outputStream:Ljava/io/FileOutputStream;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Util;->closeQuietly(Ljava/io/OutputStream;)V

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->cache:Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->file:Ljava/io/File;

    invoke-interface {v2, v3}, Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;->commitFile(Ljava/io/File;)V

    :goto_2
    iput-object v4, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->outputStream:Ljava/io/FileOutputStream;

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->file:Ljava/io/File;

    throw v1

    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2
.end method

.method private openNextOutputStream()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->cache:Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->key:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-wide v2, v2, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->absoluteStreamPosition:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->dataSpecBytesWritten:J

    add-long/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-wide v4, v4, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->length:J

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->dataSpecBytesWritten:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->maxCacheFileSize:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;->startFile(Ljava/lang/String;JJ)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->file:Ljava/io/File;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->outputStream:Ljava/io/FileOutputStream;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->outputStreamBytesWritten:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink$CacheDataSinkException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->closeCurrentOutputStream()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink$CacheDataSinkException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink$CacheDataSinkException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public open(Lorg/telegram/messenger/exoplayer/upstream/DataSpec;)Lorg/telegram/messenger/exoplayer/upstream/DataSink;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink$CacheDataSinkException;
        }
    .end annotation

    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->length:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    :try_start_0
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->dataSpecBytesWritten:J

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->openNextOutputStream()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink$CacheDataSinkException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink$CacheDataSinkException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public write([BII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink$CacheDataSinkException;
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    :try_start_0
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->outputStreamBytesWritten:J

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->maxCacheFileSize:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->closeCurrentOutputStream()V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->openNextOutputStream()V

    :cond_0
    sub-int v3, p3, v1

    int-to-long v4, v3

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->maxCacheFileSize:J

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->outputStreamBytesWritten:J

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->outputStream:Ljava/io/FileOutputStream;

    add-int v4, p2, v1

    invoke-virtual {v3, p1, v4, v0}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v1, v0

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->outputStreamBytesWritten:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->outputStreamBytesWritten:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->dataSpecBytesWritten:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;->dataSpecBytesWritten:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink$CacheDataSinkException;

    invoke-direct {v3, v2}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink$CacheDataSinkException;-><init>(Ljava/io/IOException;)V

    throw v3

    :cond_1
    return-void
.end method
