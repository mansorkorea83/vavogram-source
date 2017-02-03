.class public Lorg/telegram/hoshyar/Models/Hidden;
.super Ljava/lang/Object;
.source "Hidden.java"


# instance fields
.field private userid:Ljava/lang/Long;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/hoshyar/Models/Hidden;->userid:Ljava/lang/Long;

    iget-object v0, p0, Lorg/telegram/hoshyar/Models/Hidden;->username:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/hoshyar/Models/Hidden;->username:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/hoshyar/Models/Hidden;->username:Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/hoshyar/Models/Hidden;->userid:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getUserid()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/hoshyar/Models/Hidden;->userid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/hoshyar/Models/Hidden;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setUserid(J)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/hoshyar/Models/Hidden;->userid:Ljava/lang/Long;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/hoshyar/Models/Hidden;->username:Ljava/lang/String;

    return-void
.end method
