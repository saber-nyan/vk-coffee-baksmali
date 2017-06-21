.class Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "NotificationPostDisplayItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/data/UserNotification;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/ViewTreeObserver$OnPreDrawListener;"
    }
.end annotation


# instance fields
.field final button:Landroid/widget/TextView;

.field final imageView:Landroid/widget/ImageView;

.field lastItem:Lcom/vkcoffee/android/data/UserNotification;

.field final message:Landroid/widget/TextView;

.field final profileViews:[Landroid/widget/ImageView;

.field final profilesDescription:Landroid/widget/TextView;

.field style:I

.field final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 13
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "viewType"    # I

    .prologue
    const v12, 0x7f0a0027

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 83
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v5}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(Landroid/view/View;)V

    .line 78
    iput v10, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->style:I

    .line 85
    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Landroid/widget/LinearLayout;

    .line 86
    .local v3, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 87
    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 89
    invoke-static {p2}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem;->getButtonStyle(I)I

    move-result v2

    .line 91
    .local v2, "buttonStyle":I
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget-object v6, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem;->HEADERS:[I

    invoke-static {p2}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem;->getStyle(I)I

    move-result v7

    iput v7, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->style:I

    aget v6, v6, v7

    invoke-virtual {v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    invoke-static {p2}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem;->hasUsers(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 94
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030105

    invoke-virtual {v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget-object v6, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem;->BUTTONS:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, "button":Landroid/view/View;
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 100
    if-eq v2, v8, :cond_1

    if-ne v2, v11, :cond_2

    .line 101
    :cond_1
    iget v5, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->style:I

    packed-switch v5, :pswitch_data_0

    .line 113
    :cond_2
    :goto_0
    const v5, 0x1020016

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->$(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->title:Landroid/widget/TextView;

    .line 114
    const v5, 0x102000b

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->$(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->message:Landroid/widget/TextView;

    .line 115
    const v5, 0x1020019

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->$(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->button:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    .line 116
    iget-object v5, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->button:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    :cond_3
    const v5, 0x1020006

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->$(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 119
    const v5, 0x7f1002c2

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->$(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->profilesDescription:Landroid/widget/TextView;

    .line 120
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->profileViews:[Landroid/widget/ImageView;

    .line 121
    iget-object v6, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->profileViews:[Landroid/widget/ImageView;

    const v5, 0x7f1002be

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->$(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v6, v10

    .line 122
    iget-object v6, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->profileViews:[Landroid/widget/ImageView;

    const v5, 0x7f1002bf

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->$(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v6, v8

    .line 123
    iget-object v6, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->profileViews:[Landroid/widget/ImageView;

    const v5, 0x7f1002c0

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->$(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v6, v11

    .line 124
    iget-object v6, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->profileViews:[Landroid/widget/ImageView;

    const/4 v7, 0x3

    const v5, 0x7f1002c1

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->$(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v6, v7

    .line 126
    const v5, 0x1020027

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->$(I)Landroid/view/View;

    move-result-object v1

    .line 127
    .local v1, "buttonClose":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 128
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    :cond_4
    return-void

    .line 103
    .end local v1    # "buttonClose":Landroid/view/View;
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/high16 v6, 0x42980000    # 76.0f

    invoke-static {v6}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v6

    add-int v4, v5, v6

    .line 104
    .local v4, "leftPad":I
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 107
    .end local v4    # "leftPad":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/high16 v6, 0x42300000    # 44.0f

    invoke-static {v6}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v6

    add-int v4, v5, v6

    .line 108
    .restart local v4    # "leftPad":I
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/data/UserNotification;)V
    .locals 8
    .param p1, "item"    # Lcom/vkcoffee/android/data/UserNotification;

    .prologue
    const/high16 v7, 0x42800000    # 64.0f

    const/high16 v6, 0x42000000    # 32.0f

    const/4 v5, 0x0

    .line 146
    iput-object p1, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->lastItem:Lcom/vkcoffee/android/data/UserNotification;

    .line 148
    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkcoffee/android/data/UserNotification;->title:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/vkcoffee/android/ViewUtils;->setText(Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 149
    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->message:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkcoffee/android/data/UserNotification;->message:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/vkcoffee/android/ViewUtils;->setText(Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 150
    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->button:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkcoffee/android/data/UserNotification;->buttonText:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/vkcoffee/android/ViewUtils;->setText(Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 151
    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->profilesDescription:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkcoffee/android/data/UserNotification;->profileDescription:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/vkcoffee/android/ViewUtils;->setText(Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 152
    iget-object v2, p1, Lcom/vkcoffee/android/data/UserNotification;->profiles:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 153
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->profileViews:[Landroid/widget/ImageView;

    array-length v2, v2

    iget-object v3, p1, Lcom/vkcoffee/android/data/UserNotification;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->profileViews:[Landroid/widget/ImageView;

    aget-object v3, v2, v0

    iget-object v2, p1, Lcom/vkcoffee/android/data/UserNotification;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    iget-object v2, v2, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    const v4, 0x7f0202c2

    invoke-virtual {p0, v3, v2, v4}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    .end local v0    # "i":I
    :cond_0
    iget v2, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->style:I

    packed-switch v2, :pswitch_data_0

    .line 161
    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-static {v7}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    invoke-static {v7}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/vkcoffee/android/data/UserNotification;->findImageUrl(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v5}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 175
    :goto_1
    return-void

    .line 164
    :pswitch_0
    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-static {v6}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    invoke-static {v6}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/vkcoffee/android/data/UserNotification;->findImageUrl(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v5}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;I)V

    goto :goto_1

    .line 167
    :pswitch_1
    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->lastItem:Lcom/vkcoffee/android/data/UserNotification;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/data/UserNotification;->findImage(I)Lcom/vkcoffee/android/Image;

    move-result-object v1

    .line 168
    .local v1, "image":Lcom/vkcoffee/android/Image;
    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->imageView:Landroid/widget/ImageView;

    instance-of v2, v2, Lcom/vkcoffee/android/ui/widget/RatioImageView;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget v2, v1, Lcom/vkcoffee/android/Image;->w:I

    if-eqz v2, :cond_1

    .line 169
    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->imageView:Landroid/widget/ImageView;

    check-cast v2, Lcom/vkcoffee/android/ui/widget/RatioImageView;

    invoke-virtual {v2, v5}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->setOrientation(I)V

    .line 170
    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->imageView:Landroid/widget/ImageView;

    check-cast v2, Lcom/vkcoffee/android/ui/widget/RatioImageView;

    iget v3, v1, Lcom/vkcoffee/android/Image;->h:I

    int-to-float v3, v3

    iget v4, v1, Lcom/vkcoffee/android/Image;->w:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->setImageRatio(F)V

    .line 172
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_1

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 68
    check-cast p1, Lcom/vkcoffee/android/data/UserNotification;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->bind(Lcom/vkcoffee/android/data/UserNotification;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 136
    :sswitch_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->lastItem:Lcom/vkcoffee/android/data/UserNotification;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/data/UserNotification;->forceAction(Landroid/content/Context;)V

    goto :goto_0

    .line 139
    :sswitch_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->lastItem:Lcom/vkcoffee/android/data/UserNotification;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/data/UserNotification;->forceClose(Landroid/content/Context;)V

    goto :goto_0

    .line 134
    :sswitch_data_0
    .sparse-switch
        0x1020019 -> :sswitch_0
        0x1020027 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 179
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 180
    iget v0, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->style:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->imageView:Landroid/widget/ImageView;

    instance-of v0, v0, Lcom/vkcoffee/android/ui/widget/RatioImageView;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->lastItem:Lcom/vkcoffee/android/data/UserNotification;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/data/UserNotification;->findImageUrl(II)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020244

    invoke-virtual {p0, v0, v1, v2}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 183
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
