.class Landroid/support/v7/widget/AppCompatTextHelper;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# static fields
.field private static final TEXT_APPEARANCE_ATTRS:[I

.field private static final VIEW_ATTRS:[I


# instance fields
.field private mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableRightTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableTopTint:Landroid/support/v7/widget/TintInfo;

.field final mView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/widget/AppCompatTextHelper;->VIEW_ATTRS:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Landroid/support/v7/appcompat/R$attr;->textAllCaps:I

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/AppCompatTextHelper;->TEXT_APPEARANCE_ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x34t 0x0t 0x1t 0x1t
        0x6ft 0x1t 0x1t 0x1t
        0x6dt 0x1t 0x1t 0x1t
        0x70t 0x1t 0x1t 0x1t
        0x6et 0x1t 0x1t 0x1t
    .end array-data
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    return-void
.end method

.method static create(Landroid/widget/TextView;)Landroid/support/v7/widget/AppCompatTextHelper;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v7/widget/AppCompatTextHelperV17;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/AppCompatTextHelperV17;-><init>(Landroid/widget/TextView;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/AppCompatTextHelper;-><init>(Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method protected static createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/TintManager;I)Landroid/support/v7/widget/TintInfo;
    .locals 3

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/TintManager;->getTintList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/support/v7/widget/TintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    iput-object v1, v0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method final applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/TintManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    :cond_0
    return-void
.end method

.method applyCompoundDrawablesTints()V
    .locals 3

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTopTint:Landroid/support/v7/widget/TintInfo;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableRightTint:Landroid/support/v7/widget/TintInfo;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTopTint:Landroid/support/v7/widget/TintInfo;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    const/4 v1, 0x2

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableRightTint:Landroid/support/v7/widget/TintInfo;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    const/4 v1, 0x3

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    :cond_1
    return-void
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/TintManager;->get(Landroid/content/Context;)Landroid/support/v7/widget/TintManager;

    move-result-object v4

    sget-object v5, Landroid/support/v7/widget/AppCompatTextHelper;->VIEW_ATTRS:[I

    invoke-virtual {v3, p1, v5, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/TintManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;

    :cond_0
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v9, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/TintManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTopTint:Landroid/support/v7/widget/TintInfo;

    :cond_1
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0, v10, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/TintManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableRightTint:Landroid/support/v7/widget/TintInfo;

    :cond_2
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x4

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/TintManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;

    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v1, v8, :cond_5

    sget-object v5, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-virtual {v3, v1, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v5, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_4

    sget v5, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/AppCompatTextHelper;->setAllCaps(Z)V

    :cond_4
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_5
    sget-object v5, Landroid/support/v7/widget/AppCompatTextHelper;->TEXT_APPEARANCE_ATTRS:[I

    invoke-virtual {v3, p1, v5, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/AppCompatTextHelper;->setAllCaps(Z)V

    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method onSetTextAppearance(Landroid/content/Context;I)V
    .locals 3

    const/4 v2, 0x0

    sget-object v1, Landroid/support/v7/widget/AppCompatTextHelper;->TEXT_APPEARANCE_ATTRS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatTextHelper;->setAllCaps(Z)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method setAllCaps(Z)V
    .locals 3

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    new-instance v0, Landroid/support/v7/text/AllCapsTransformationMethod;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/text/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
