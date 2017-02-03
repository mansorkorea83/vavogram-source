.class abstract Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaption;
.super Ljava/lang/Object;
.source "ClosedCaption.java"


# static fields
.field public static final TYPE_CTRL:I = 0x0

.field public static final TYPE_TEXT:I = 0x1


# instance fields
.field public final type:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaption;->type:I

    return-void
.end method
