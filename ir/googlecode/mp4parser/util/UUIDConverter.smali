.class public Lcom/googlecode/mp4parser/util/UUIDConverter;
.super Ljava/lang/Object;
.source "UUIDConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert([B)Ljava/util/UUID;
    .locals 6

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance v1, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    return-object v1
.end method

.method public static convert(Ljava/util/UUID;)[B
    .locals 9

    const/16 v8, 0x10

    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    new-array v0, v8, [B

    const/4 v1, 0x0

    :goto_0
    const/16 v6, 0x8

    if-lt v1, v6, :cond_0

    const/16 v1, 0x8

    :goto_1
    if-lt v1, v8, :cond_1

    return-object v0

    :cond_0
    rsub-int/lit8 v6, v1, 0x7

    mul-int/lit8 v6, v6, 0x8

    ushr-long v6, v4, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    rsub-int/lit8 v6, v1, 0x7

    mul-int/lit8 v6, v6, 0x8

    ushr-long v6, v2, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
