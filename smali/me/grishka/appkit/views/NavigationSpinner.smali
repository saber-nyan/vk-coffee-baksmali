.class public Lme/grishka/appkit/views/NavigationSpinner;
.super Landroid/widget/Spinner;
.source "NavigationSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/grishka/appkit/views/NavigationSpinner$DropDownWidthHelper;
    }
.end annotation


# static fields
.field private static final MAX_ITEMS_MEASURED:I = 0xf


# instance fields
.field private dropDownWidthHelper:Lme/grishka/appkit/views/NavigationSpinner$DropDownWidthHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lme/grishka/appkit/views/NavigationSpinner;->dropDownWidthHelper:Lme/grishka/appkit/views/NavigationSpinner$DropDownWidthHelper;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;I)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lme/grishka/appkit/views/NavigationSpinner;->dropDownWidthHelper:Lme/grishka/appkit/views/NavigationSpinner$DropDownWidthHelper;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lme/grishka/appkit/views/NavigationSpinner;->dropDownWidthHelper:Lme/grishka/appkit/views/NavigationSpinner$DropDownWidthHelper;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lme/grishka/appkit/views/NavigationSpinner;->dropDownWidthHelper:Lme/grishka/appkit/views/NavigationSpinner$DropDownWidthHelper;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "mode"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lme/grishka/appkit/views/NavigationSpinner;->dropDownWidthHelper:Lme/grishka/appkit/views/NavigationSpinner$DropDownWidthHelper;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "mode"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 45
    invoke-direct/range {p0 .. p5}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lme/grishka/appkit/views/NavigationSpinner;->dropDownWidthHelper:Lme/grishka/appkit/views/NavigationSpinner$DropDownWidthHelper;

    .line 46
    return-void
.end method


# virtual methods
.method public measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 15
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 61
    if-nez p1, :cond_1

    .line 62
    const/4 v10, 0x0

    .line 102
    :cond_0
    :goto_0
    return v10

    .line 65
    :cond_1
    const/4 v10, 0x0

    .line 66
    .local v10, "width":I
    const/4 v6, 0x0

    .line 67
    .local v6, "itemView":Landroid/view/View;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 68
    .local v9, "tempRect":Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 69
    .local v5, "itemType":I
    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 70
    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 71
    .local v11, "widthMeasureSpec":I
    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 72
    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 76
    .local v3, "heightMeasureSpec":I
    const/4 v12, 0x0

    invoke-virtual {p0}, Lme/grishka/appkit/views/NavigationSpinner;->getSelectedItemPosition()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 77
    .local v8, "start":I
    invoke-interface/range {p1 .. p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v12

    add-int/lit8 v13, v8, 0xf

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 78
    .local v2, "end":I
    sub-int v1, v2, v8

    .line 79
    .local v1, "count":I
    const/4 v12, 0x0

    rsub-int/lit8 v13, v1, 0xf

    sub-int v13, v8, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 80
    move v4, v8

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_4

    .line 81
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v7

    .line 82
    .local v7, "positionType":I
    if-eq v7, v5, :cond_2

    .line 83
    move v5, v7

    .line 84
    const/4 v6, 0x0

    .line 86
    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v4, v6, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 87
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    if-nez v12, :cond_3

    .line 88
    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    :cond_3
    invoke-virtual {v6, v11, v3}, Landroid/view/View;->measure(II)V

    .line 93
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 80
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 97
    .end local v7    # "positionType":I
    :cond_4
    if-eqz p2, :cond_0

    .line 98
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 99
    iget v12, v9, Landroid/graphics/Rect;->left:I

    iget v13, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 107
    iget-object v1, p0, Lme/grishka/appkit/views/NavigationSpinner;->dropDownWidthHelper:Lme/grishka/appkit/views/NavigationSpinner$DropDownWidthHelper;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lme/grishka/appkit/views/NavigationSpinner;->dropDownWidthHelper:Lme/grishka/appkit/views/NavigationSpinner$DropDownWidthHelper;

    invoke-virtual {p0}, Lme/grishka/appkit/views/NavigationSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lme/grishka/appkit/views/NavigationSpinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v2

    invoke-virtual {p0}, Lme/grishka/appkit/views/NavigationSpinner;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v3, v3

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    invoke-interface {v1, p0, v2, v3}, Lme/grishka/appkit/views/NavigationSpinner$DropDownWidthHelper;->getDropDownWidth(Lme/grishka/appkit/views/NavigationSpinner;II)I

    move-result v0

    .line 109
    .local v0, "w":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 110
    invoke-virtual {p0, v0}, Lme/grishka/appkit/views/NavigationSpinner;->setDropDownWidth(I)V

    .line 112
    .end local v0    # "w":I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 113
    return-void
.end method

.method public performClick()Z
    .locals 3

    .prologue
    .line 117
    invoke-virtual {p0}, Lme/grishka/appkit/views/NavigationSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lme/grishka/appkit/views/NavigationSpinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    invoke-virtual {p0}, Lme/grishka/appkit/views/NavigationSpinner;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 118
    .local v0, "w":I
    invoke-virtual {p0}, Lme/grishka/appkit/views/NavigationSpinner;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lme/grishka/appkit/views/NavigationSpinner;->dropDownWidthHelper:Lme/grishka/appkit/views/NavigationSpinner$DropDownWidthHelper;

    if-nez v1, :cond_2

    .line 121
    :cond_0
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 122
    invoke-virtual {p0, v0}, Lme/grishka/appkit/views/NavigationSpinner;->setDropDownWidth(I)V

    .line 123
    :cond_1
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v1

    return v1

    .line 119
    :cond_2
    iget-object v2, p0, Lme/grishka/appkit/views/NavigationSpinner;->dropDownWidthHelper:Lme/grishka/appkit/views/NavigationSpinner$DropDownWidthHelper;

    invoke-virtual {p0}, Lme/grishka/appkit/views/NavigationSpinner;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-interface {v2, p0, v0, v1}, Lme/grishka/appkit/views/NavigationSpinner$DropDownWidthHelper;->getDropDownWidth(Lme/grishka/appkit/views/NavigationSpinner;II)I

    move-result v0

    goto :goto_0
.end method

.method public setDropDownWidthHelper(Lme/grishka/appkit/views/NavigationSpinner$DropDownWidthHelper;)V
    .locals 0
    .param p1, "dropDownWidthHelper"    # Lme/grishka/appkit/views/NavigationSpinner$DropDownWidthHelper;

    .prologue
    .line 57
    iput-object p1, p0, Lme/grishka/appkit/views/NavigationSpinner;->dropDownWidthHelper:Lme/grishka/appkit/views/NavigationSpinner$DropDownWidthHelper;

    .line 58
    return-void
.end method
