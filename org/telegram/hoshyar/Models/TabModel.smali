.class public Lorg/telegram/hoshyar/Models/TabModel;
.super Ljava/lang/Object;
.source "TabModel.java"


# instance fields
.field private id:I

.field private selectedicon:I

.field private title:I

.field private unselectedicon:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/hoshyar/Models/TabModel;->id:I

    iput p2, p0, Lorg/telegram/hoshyar/Models/TabModel;->title:I

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/hoshyar/Models/Theme;->getTabsIconSelected()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/telegram/hoshyar/Models/TabModel;->selectedicon:I

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/hoshyar/Models/Theme;->getTabsIconNormal()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/telegram/hoshyar/Models/TabModel;->unselectedicon:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lorg/telegram/hoshyar/Models/TabModel;->selectedicon:I

    iput p3, p0, Lorg/telegram/hoshyar/Models/TabModel;->unselectedicon:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lorg/telegram/hoshyar/Models/TabModel;->id:I

    return v0
.end method

.method public getSelectedicon()I
    .locals 1

    iget v0, p0, Lorg/telegram/hoshyar/Models/TabModel;->selectedicon:I

    return v0
.end method

.method public getTitle()I
    .locals 1

    iget v0, p0, Lorg/telegram/hoshyar/Models/TabModel;->title:I

    return v0
.end method

.method public getUnselectedicon()I
    .locals 1

    iget v0, p0, Lorg/telegram/hoshyar/Models/TabModel;->unselectedicon:I

    return v0
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/hoshyar/Models/TabModel;->id:I

    return-void
.end method

.method public setSelectedicon(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/hoshyar/Models/TabModel;->selectedicon:I

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/hoshyar/Models/TabModel;->title:I

    return-void
.end method

.method public setUnselectedicon(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/hoshyar/Models/TabModel;->unselectedicon:I

    return-void
.end method
