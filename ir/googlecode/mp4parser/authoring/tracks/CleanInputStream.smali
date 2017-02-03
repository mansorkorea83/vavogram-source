.class public Lcom/googlecode/mp4parser/authoring/tracks/CleanInputStream;
.super Ljava/io/FilterInputStream;
.source "CleanInputStream.java"


# instance fields
.field prev:I

.field prevprev:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CleanInputStream;->prevprev:I

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CleanInputStream;->prev:I

    return-void
.end method


# virtual methods
.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/CleanInputStream;->prevprev:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/CleanInputStream;->prev:I

    if-nez v1, :cond_0

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/CleanInputStream;->prevprev:I

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/CleanInputStream;->prev:I

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    :cond_0
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/CleanInputStream;->prev:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/CleanInputStream;->prevprev:I

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CleanInputStream;->prev:I

    return v0
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    array-length v3, p1

    sub-int/2addr v3, p2

    if-le p3, v3, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_2
    if-nez p3, :cond_4

    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/tracks/CleanInputStream;->read()I

    move-result v0

    if-ne v0, v2, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    int-to-byte v3, v0

    aput-byte v3, p1, p2

    const/4 v1, 0x1

    :goto_1
    if-ge v1, p3, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/tracks/CleanInputStream;->read()I

    move-result v0

    if-eq v0, v2, :cond_3

    add-int v3, p2, v1

    int-to-byte v4, v0

    aput-byte v4, p1, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method
