.class public Lorg/telegram/hoshyar/Setting/TabSetting;
.super Ljava/lang/Object;
.source "TabSetting.java"


# static fields
.field private static l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/hoshyar/Models/TabModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetTabs(Landroid/support/design/widget/TabLayout;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/TabLayout;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/TabLayout$Tab;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lorg/telegram/hoshyar/Setting/TabSetting;->getTabModels()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/hoshyar/Models/TabModel;

    invoke-virtual {v4}, Lorg/telegram/hoshyar/Models/TabModel;->getUnselectedicon()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/support/design/widget/TabLayout$Tab;->setIcon(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static getNormalIcon(I)I
    .locals 1

    sget-object v0, Lorg/telegram/hoshyar/Setting/TabSetting;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/hoshyar/Models/TabModel;

    invoke-virtual {v0}, Lorg/telegram/hoshyar/Models/TabModel;->getUnselectedicon()I

    move-result v0

    return v0
.end method

.method public static getSelectedICon(I)I
    .locals 1

    sget-object v0, Lorg/telegram/hoshyar/Setting/TabSetting;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/hoshyar/Models/TabModel;

    invoke-virtual {v0}, Lorg/telegram/hoshyar/Models/TabModel;->getSelectedicon()I

    move-result v0

    return v0
.end method

.method public static getTabModels()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/hoshyar/Models/TabModel;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/telegram/hoshyar/Setting/TabSetting;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/hoshyar/Setting/TabSetting;->l:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/hoshyar/Setting/TabSetting;->l:Ljava/util/ArrayList;

    sget-object v0, Lorg/telegram/hoshyar/Setting/TabSetting;->l:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/hoshyar/Models/TabModel;

    const/4 v2, 0x0

    const v3, 0x7f0800b8

    invoke-direct {v1, v2, v3}, Lorg/telegram/hoshyar/Models/TabModel;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/hoshyar/Setting/TabSetting;->l:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/hoshyar/Models/TabModel;

    const/4 v2, 0x1

    const v3, 0x7f08063b

    invoke-direct {v1, v2, v3}, Lorg/telegram/hoshyar/Models/TabModel;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/hoshyar/Setting/TabSetting;->l:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/hoshyar/Models/TabModel;

    const/4 v2, 0x2

    const v3, 0x7f080689

    invoke-direct {v1, v2, v3}, Lorg/telegram/hoshyar/Models/TabModel;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/hoshyar/Setting/TabSetting;->l:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/hoshyar/Models/TabModel;

    const/4 v2, 0x3

    const v3, 0x7f080153

    invoke-direct {v1, v2, v3}, Lorg/telegram/hoshyar/Models/TabModel;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/hoshyar/Setting/TabSetting;->l:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/hoshyar/Models/TabModel;

    const/4 v2, 0x4

    const v3, 0x7f080674

    invoke-direct {v1, v2, v3}, Lorg/telegram/hoshyar/Models/TabModel;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/hoshyar/Setting/TabSetting;->l:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/hoshyar/Models/TabModel;

    const/4 v2, 0x5

    const v3, 0x7f08061c

    invoke-direct {v1, v2, v3}, Lorg/telegram/hoshyar/Models/TabModel;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/hoshyar/Setting/TabSetting;->l:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/hoshyar/Models/TabModel;

    const/4 v2, 0x6

    const v3, 0x7f080738

    invoke-direct {v1, v2, v3}, Lorg/telegram/hoshyar/Models/TabModel;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/hoshyar/Setting/TabSetting;->l:Ljava/util/ArrayList;

    goto :goto_0
.end method
