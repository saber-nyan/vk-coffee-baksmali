.class public Lme/grishka/appkit/fragments/AppKitFragment$NavigationSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppKitFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/grishka/appkit/fragments/AppKitFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NavigationSpinnerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lme/grishka/appkit/fragments/AppKitFragment;


# direct methods
.method public constructor <init>(Lme/grishka/appkit/fragments/AppKitFragment;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    iput-object p1, p0, Lme/grishka/appkit/fragments/AppKitFragment$NavigationSpinnerAdapter;->this$0:Lme/grishka/appkit/fragments/AppKitFragment;

    .line 67
    iget v0, p1, Lme/grishka/appkit/fragments/AppKitFragment;->spinnerViewResourceId:I

    const v1, 0x1020014

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 68
    const v0, 0x1090009

    invoke-virtual {p0, v0}, Lme/grishka/appkit/fragments/AppKitFragment$NavigationSpinnerAdapter;->setDropDownViewResource(I)V

    .line 69
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v10, -0x1000000

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 72
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 73
    .local v4, "view":Landroid/view/View;
    if-nez p2, :cond_0

    .line 74
    iget-object v5, p0, Lme/grishka/appkit/fragments/AppKitFragment$NavigationSpinnerAdapter;->this$0:Lme/grishka/appkit/fragments/AppKitFragment;

    invoke-virtual {v5}, Lme/grishka/appkit/fragments/AppKitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    new-array v6, v7, [I

    fill-array-data v6, :array_0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 75
    .local v3, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v8, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 76
    .local v0, "colorAccent":I
    invoke-virtual {v3, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 77
    .local v1, "colorForeground":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    new-array v2, v7, [[I

    .line 79
    .local v2, "r5":[[I
    new-array v5, v9, [I

    const v6, 0x10100a0

    aput v6, v5, v8

    aput-object v5, v2, v8

    .line 80
    new-array v5, v8, [I

    aput-object v5, v2, v9

    move-object v5, v4

    .line 81
    check-cast v5, Landroid/widget/TextView;

    new-instance v6, Landroid/content/res/ColorStateList;

    new-array v7, v7, [I

    aput v0, v7, v8

    aput v1, v7, v9

    invoke-direct {v6, v2, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 83
    .end local v0    # "colorAccent":I
    .end local v1    # "colorForeground":I
    .end local v2    # "r5":[[I
    .end local v3    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    return-object v4

    .line 74
    :array_0
    .array-data 4
        0x7f0101a6
        0x1010030
    .end array-data
.end method
