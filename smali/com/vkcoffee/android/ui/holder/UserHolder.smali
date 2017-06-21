.class public Lcom/vkcoffee/android/ui/holder/UserHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "UserHolder.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/vkcoffee/android/UserProfile;",
        ">",
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<TT;>;",
        "Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;"
    }
.end annotation


# instance fields
.field protected final mActionButton:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mActionListener:Lcom/vkcoffee/android/functions/VoidF1;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field protected final mCheckButton:Landroid/widget/CompoundButton;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mCheckListener:Lcom/vkcoffee/android/functions/VoidF1Bool;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1Bool",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field protected final mConfig:I

.field protected mData:Lcom/vkcoffee/android/UserProfile;

.field public final mImage:Landroid/widget/ImageView;

.field private mListener:Lcom/vkcoffee/android/functions/VoidF1;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field protected final mOnline:Landroid/widget/ImageView;

.field protected final mSubtitle:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final mTitle:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "layout"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/UserHolder;, "Lcom/vkcoffee/android/ui/holder/UserHolder<TT;>;"
    const/4 v2, 0x0

    .line 103
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/content/Context;)V

    .line 104
    const v1, 0x7f1000dd

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mTitle:Landroid/widget/TextView;

    .line 105
    const v1, 0x7f100169

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mSubtitle:Landroid/widget/TextView;

    .line 106
    const v1, 0x7f100146

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mImage:Landroid/widget/ImageView;

    .line 107
    const v1, 0x7f10004e

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mOnline:Landroid/widget/ImageView;

    .line 108
    const v1, 0x7f10021e

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->$(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mActionButton:Landroid/view/View;

    .line 109
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mActionButton:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mActionButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    :cond_0
    const v1, 0x7f1003f0

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mCheckButton:Landroid/widget/CompoundButton;

    .line 113
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mCheckButton:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mCheckButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mOnline:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 118
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mOnline:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 119
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 120
    check-cast v0, Ljava/lang/String;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mConfig:I

    .line 128
    :goto_0
    return-void

    .line 123
    .restart local v0    # "tag":Ljava/lang/Object;
    :cond_2
    iput v2, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mConfig:I

    goto :goto_0

    .line 127
    .end local v0    # "tag":Ljava/lang/Object;
    :cond_3
    iput v2, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mConfig:I

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/view/ViewGroup;IZZZ)V
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "layout"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p3, "subtitle"    # Z
    .param p4, "check"    # Z
    .param p5, "action"    # Z

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/UserHolder;, "Lcom/vkcoffee/android/ui/holder/UserHolder<TT;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 66
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/content/Context;)V

    .line 67
    const v1, 0x7f1000dd

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mTitle:Landroid/widget/TextView;

    .line 68
    const v1, 0x7f100146

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mImage:Landroid/widget/ImageView;

    .line 69
    const v1, 0x7f10004e

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mOnline:Landroid/widget/ImageView;

    .line 70
    if-eqz p3, :cond_2

    const v1, 0x7f100169

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    :goto_0
    iput-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mSubtitle:Landroid/widget/TextView;

    .line 71
    if-eqz p5, :cond_3

    .line 72
    const v1, 0x7f10021e

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->$(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mActionButton:Landroid/view/View;

    .line 73
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mActionButton:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mActionButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    :cond_0
    :goto_1
    if-eqz p4, :cond_4

    .line 80
    const v1, 0x7f1003f0

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mCheckButton:Landroid/widget/CompoundButton;

    .line 81
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mCheckButton:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mCheckButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mOnline:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    .line 89
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mOnline:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 90
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 91
    check-cast v0, Ljava/lang/String;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mConfig:I

    .line 99
    :goto_3
    return-void

    :cond_2
    move-object v1, v2

    .line 70
    goto :goto_0

    .line 77
    :cond_3
    iput-object v2, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mActionButton:Landroid/view/View;

    goto :goto_1

    .line 85
    :cond_4
    iput-object v2, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mCheckButton:Landroid/widget/CompoundButton;

    goto :goto_2

    .line 94
    .restart local v0    # "tag":Ljava/lang/Object;
    :cond_5
    iput v3, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mConfig:I

    goto :goto_3

    .line 98
    .end local v0    # "tag":Ljava/lang/Object;
    :cond_6
    iput v3, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mConfig:I

    goto :goto_3
.end method

.method public static actionable(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/UserHolder;
    .locals 1
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/vkcoffee/android/UserProfile;",
            ">(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/vkcoffee/android/ui/holder/UserHolder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    const v0, 0x7f030191

    invoke-static {p0, v0}, Lcom/vkcoffee/android/ui/holder/UserHolder;->actionable(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/UserHolder;

    move-result-object v0

    return-object v0
.end method

.method public static actionable(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/UserHolder;
    .locals 6
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "layout"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/vkcoffee/android/UserProfile;",
            ">(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/vkcoffee/android/ui/holder/UserHolder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/vkcoffee/android/ui/holder/UserHolder;

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/ui/holder/UserHolder;-><init>(Landroid/view/ViewGroup;IZZZ)V

    return-object v0
.end method

.method public static checkable(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/UserHolder;
    .locals 1
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/vkcoffee/android/UserProfile;",
            ">(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/vkcoffee/android/ui/holder/UserHolder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    const v0, 0x7f03018e

    invoke-static {p0, v0}, Lcom/vkcoffee/android/ui/holder/UserHolder;->checkable(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/UserHolder;

    move-result-object v0

    return-object v0
.end method

.method public static checkable(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/UserHolder;
    .locals 6
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "layout"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/vkcoffee/android/UserProfile;",
            ">(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/vkcoffee/android/ui/holder/UserHolder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 46
    new-instance v0, Lcom/vkcoffee/android/ui/holder/UserHolder;

    const/4 v4, 0x1

    move-object v1, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/ui/holder/UserHolder;-><init>(Landroid/view/ViewGroup;IZZZ)V

    return-object v0
.end method

.method public static simple(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/UserHolder;
    .locals 1
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/vkcoffee/android/UserProfile;",
            ">(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/vkcoffee/android/ui/holder/UserHolder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    const v0, 0x7f03018c

    invoke-static {p0, v0}, Lcom/vkcoffee/android/ui/holder/UserHolder;->simple(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/UserHolder;

    move-result-object v0

    return-object v0
.end method

.method public static simple(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/UserHolder;
    .locals 6
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "layout"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/vkcoffee/android/UserProfile;",
            ">(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/vkcoffee/android/ui/holder/UserHolder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 50
    new-instance v0, Lcom/vkcoffee/android/ui/holder/UserHolder;

    move-object v1, p0

    move v2, p1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/ui/holder/UserHolder;-><init>(Landroid/view/ViewGroup;IZZZ)V

    return-object v0
.end method

.method public static updateOnlineImage(Landroid/widget/ImageView;Lcom/vkcoffee/android/UserProfile;I)V
    .locals 3
    .param p0, "imageView"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "user"    # Lcom/vkcoffee/android/UserProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "imageDpSize"    # I

    .prologue
    const/4 v2, 0x1

    .line 169
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 170
    iget v0, p1, Lcom/vkcoffee/android/UserProfile;->online:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    const v1, -0x77359400

    if-lt v0, v1, :cond_0

    iget v0, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    const v1, 0x77359400

    if-lt v0, v1, :cond_2

    .line 171
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    :cond_1
    :goto_0
    return-void

    .line 174
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 177
    :sswitch_0
    iget v0, p1, Lcom/vkcoffee/android/UserProfile;->online:I

    if-ne v0, v2, :cond_3

    const v0, 0x7f0201b2

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    const v0, 0x7f0201b5

    goto :goto_1

    .line 180
    :sswitch_1
    iget v0, p1, Lcom/vkcoffee/android/UserProfile;->online:I

    if-ne v0, v2, :cond_4

    const v0, 0x7f0201b3

    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    const v0, 0x7f0201b6

    goto :goto_2

    .line 183
    :sswitch_2
    iget v0, p1, Lcom/vkcoffee/android/UserProfile;->online:I

    if-ne v0, v2, :cond_5

    const v0, 0x7f0201b1

    :goto_3
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_5
    const v0, 0x7f0201b4

    goto :goto_3

    .line 175
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x40 -> :sswitch_1
        0x80 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/UserProfile;)V
    .locals 7
    .param p1, "user"    # Lcom/vkcoffee/android/UserProfile;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/UserHolder;, "Lcom/vkcoffee/android/ui/holder/UserHolder<TT;>;"
    const/16 v6, 0xa0

    const/16 v5, 0x20

    const/4 v4, 0x0

    .line 137
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mData:Lcom/vkcoffee/android/UserProfile;

    .line 139
    iget-boolean v1, p1, Lcom/vkcoffee/android/UserProfile;->verified:Z

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/vkcoffee/android/UserProfile;->coffeeVer:Z

    if-eqz v1, :cond_5

    .line 140
    :cond_0
    invoke-virtual {p1}, Lcom/vkcoffee/android/UserProfile;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 141
    .local v0, "title":Landroid/text/SpannableStringBuilder;
    if-nez v0, :cond_3

    .line 142
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .end local v0    # "title":Landroid/text/SpannableStringBuilder;
    iget-object v1, p1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 143
    .restart local v0    # "title":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 144
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 145
    iget-boolean v1, p1, Lcom/vkcoffee/android/UserProfile;->coffeeVer:Z

    if-eqz v1, :cond_1

    .line 146
    new-instance v1, Lcom/vkcoffee/android/ui/drawables/CenteredImageSpan;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/UserHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0202fb

    invoke-direct {v1, v2, v3}, Lcom/vkcoffee/android/ui/drawables/CenteredImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 149
    :cond_1
    iget-boolean v1, p1, Lcom/vkcoffee/android/UserProfile;->verified:Z

    if-eqz v1, :cond_3

    .line 150
    iget-boolean v1, p1, Lcom/vkcoffee/android/UserProfile;->coffeeVer:Z

    if-eqz v1, :cond_2

    .line 151
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 152
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 154
    :cond_2
    new-instance v1, Lcom/vkcoffee/android/ui/drawables/CenteredImageSpan;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/UserHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f02023a

    invoke-direct {v1, v2, v3}, Lcom/vkcoffee/android/ui/drawables/CenteredImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 157
    :cond_3
    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/UserProfile;->setTag(Ljava/lang/Object;)V

    .line 158
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    .end local v0    # "title":Landroid/text/SpannableStringBuilder;
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mOnline:Landroid/widget/ImageView;

    iget v2, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mConfig:I

    invoke-static {v1, p1, v2}, Lcom/vkcoffee/android/ui/holder/UserHolder;->updateOnlineImage(Landroid/widget/ImageView;Lcom/vkcoffee/android/UserProfile;I)V

    .line 163
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mCheckButton:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_4

    .line 164
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mCheckButton:Landroid/widget/CompoundButton;

    iget-boolean v2, p1, Lcom/vkcoffee/android/UserProfile;->isSelected:Z

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 166
    :cond_4
    return-void

    .line 160
    :cond_5
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mTitle:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->bind(Lcom/vkcoffee/android/UserProfile;)V

    return-void
.end method

.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 196
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/UserHolder;, "Lcom/vkcoffee/android/ui/holder/UserHolder<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mImage:Landroid/widget/ImageView;

    const v1, 0x7f0202c5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    return-void
.end method

.method public onAction(Lcom/vkcoffee/android/functions/VoidF1;)Lcom/vkcoffee/android/ui/holder/UserHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)",
            "Lcom/vkcoffee/android/ui/holder/UserHolder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/UserHolder;, "Lcom/vkcoffee/android/ui/holder/UserHolder<TT;>;"
    .local p1, "listener":Lcom/vkcoffee/android/functions/VoidF1;, "Lcom/vkcoffee/android/functions/VoidF1<Lcom/vkcoffee/android/UserProfile;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mActionListener:Lcom/vkcoffee/android/functions/VoidF1;

    .line 222
    return-object p0
.end method

.method public onCheck(Lcom/vkcoffee/android/functions/VoidF1Bool;)Lcom/vkcoffee/android/ui/holder/UserHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/functions/VoidF1Bool",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)",
            "Lcom/vkcoffee/android/ui/holder/UserHolder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/UserHolder;, "Lcom/vkcoffee/android/ui/holder/UserHolder<TT;>;"
    .local p1, "listener":Lcom/vkcoffee/android/functions/VoidF1Bool;, "Lcom/vkcoffee/android/functions/VoidF1Bool<Lcom/vkcoffee/android/UserProfile;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mCheckListener:Lcom/vkcoffee/android/functions/VoidF1Bool;

    .line 227
    return-object p0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 200
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/UserHolder;, "Lcom/vkcoffee/android/ui/holder/UserHolder<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mData:Lcom/vkcoffee/android/UserProfile;

    iget-boolean v0, v0, Lcom/vkcoffee/android/UserProfile;->isSelected:Z

    if-eq v0, p2, :cond_0

    .line 201
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mData:Lcom/vkcoffee/android/UserProfile;

    iput-boolean p2, v0, Lcom/vkcoffee/android/UserProfile;->isSelected:Z

    .line 202
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mCheckListener:Lcom/vkcoffee/android/functions/VoidF1Bool;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mCheckListener:Lcom/vkcoffee/android/functions/VoidF1Bool;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mData:Lcom/vkcoffee/android/UserProfile;

    invoke-interface {v0, v1, p2}, Lcom/vkcoffee/android/functions/VoidF1Bool;->f(Ljava/lang/Object;Z)V

    .line 206
    :cond_0
    return-void
.end method

.method public onClick(Lcom/vkcoffee/android/functions/VoidF1;)Lcom/vkcoffee/android/ui/holder/UserHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)",
            "Lcom/vkcoffee/android/ui/holder/UserHolder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/UserHolder;, "Lcom/vkcoffee/android/ui/holder/UserHolder<TT;>;"
    .local p1, "listener":Lcom/vkcoffee/android/functions/VoidF1;, "Lcom/vkcoffee/android/functions/VoidF1<Lcom/vkcoffee/android/UserProfile;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mListener:Lcom/vkcoffee/android/functions/VoidF1;

    .line 132
    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 209
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/UserHolder;, "Lcom/vkcoffee/android/ui/holder/UserHolder<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->itemView:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mCheckButton:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mCheckButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mListener:Lcom/vkcoffee/android/functions/VoidF1;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mListener:Lcom/vkcoffee/android/functions/VoidF1;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mData:Lcom/vkcoffee/android/UserProfile;

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/functions/VoidF1;->f(Ljava/lang/Object;)V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mActionButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mActionButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mActionListener:Lcom/vkcoffee/android/functions/VoidF1;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mActionListener:Lcom/vkcoffee/android/functions/VoidF1;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mData:Lcom/vkcoffee/android/UserProfile;

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/functions/VoidF1;->f(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 192
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/UserHolder;, "Lcom/vkcoffee/android/ui/holder/UserHolder<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/UserHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 193
    return-void
.end method
