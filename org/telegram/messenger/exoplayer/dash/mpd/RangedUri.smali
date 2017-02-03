.class public final Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;
.super Ljava/lang/Object;
.source "RangedUri.java"


# instance fields
.field private final baseUri:Ljava/lang/String;

.field private hashCode:I

.field public final length:J

.field private final referenceUri:Ljava/lang/String;

.field public final start:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(Z)V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->baseUri:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->referenceUri:Ljava/lang/String;

    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->start:J

    iput-wide p5, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->length:J

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public attemptMerge(Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;)Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;
    .locals 10

    const/4 v1, 0x0

    const-wide/16 v6, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->getUriString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->length:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->start:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->length:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->start:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    new-instance v1, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->baseUri:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->referenceUri:Ljava/lang/String;

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->start:J

    iget-wide v8, p1, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->length:J

    cmp-long v0, v8, v6

    if-nez v0, :cond_2

    :goto_1
    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_2
    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->length:J

    iget-wide v8, p1, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->length:J

    add-long/2addr v6, v8

    goto :goto_1

    :cond_3
    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->length:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->start:J

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->length:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->start:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    new-instance v1, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->baseUri:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->referenceUri:Ljava/lang/String;

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->start:J

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->length:J

    cmp-long v0, v8, v6

    if-nez v0, :cond_4

    :goto_2
    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_4
    iget-wide v6, p1, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->length:J

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->length:J

    add-long/2addr v6, v8

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->start:J

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->start:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->length:J

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->length:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->getUriString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->baseUri:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->referenceUri:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getUriString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->baseUri:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->referenceUri:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->hashCode:I

    if-nez v1, :cond_0

    const/16 v0, 0x11

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->start:J

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->length:J

    long-to-int v2, v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    iput v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->hashCode:I

    :cond_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->hashCode:I

    return v1
.end method
