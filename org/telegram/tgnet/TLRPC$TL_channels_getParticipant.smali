.class public Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channels_getParticipant"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

.field public user_id:Lorg/telegram/tgnet/TLRPC$InputUser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x546dd7a6

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1

    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputChannel;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputUser;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method