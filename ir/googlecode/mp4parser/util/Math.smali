.class public Lcom/googlecode/mp4parser/util/Math;
.super Ljava/lang/Object;
.source "Math.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gcd(II)I
    .locals 1

    :goto_0
    if-gtz p1, :cond_0

    return p0

    :cond_0
    move v0, p1

    rem-int p1, p0, p1

    move p0, v0

    goto :goto_0
.end method

.method public static gcd(JJ)J
    .locals 4

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_0

    return-wide p0

    :cond_0
    move-wide v0, p2

    rem-long p2, p0, p2

    move-wide p0, v0

    goto :goto_0
.end method

.method public static lcm(II)I
    .locals 1

    invoke-static {p0, p1}, Lcom/googlecode/mp4parser/util/Math;->gcd(II)I

    move-result v0

    div-int v0, p1, v0

    mul-int/2addr v0, p0

    return v0
.end method

.method public static lcm(JJ)J
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lcom/googlecode/mp4parser/util/Math;->gcd(JJ)J

    move-result-wide v0

    div-long v0, p2, v0

    mul-long/2addr v0, p0

    return-wide v0
.end method
