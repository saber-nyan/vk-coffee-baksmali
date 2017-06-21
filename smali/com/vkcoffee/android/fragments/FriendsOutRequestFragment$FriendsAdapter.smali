.class Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FriendsOutRequestFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FriendsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$Item;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter;->this$0:Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;

    .line 189
    const v0, 0x7f030090

    iget-object v1, p1, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->list2:Ljava/util/ArrayList;

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 190
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter;)Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter;->this$0:Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 194
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$Item;

    .line 196
    .local v2, "item":Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$Item;
    if-nez p2, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 198
    const v8, 0x7f030090

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 200
    :cond_0
    iget-object v5, v2, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$Item;->user_name:Ljava/lang/String;

    .line 201
    .local v5, "var6":Ljava/lang/String;
    iget-object v7, v2, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$Item;->online:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 202
    new-instance v5, Landroid/text/SpannableStringBuilder;

    .end local v5    # "var6":Ljava/lang/String;
    iget-object v7, v2, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$Item;->user_name:Ljava/lang/String;

    invoke-direct {v5, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 203
    .local v5, "var6":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v7

    const-string v8, "F"

    invoke-virtual {v7, v8}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v4

    .line 204
    .local v4, "var5":Landroid/text/Spannable;
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter;->this$0:Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;

    invoke-virtual {v7}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, v2, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$Item;->iconid:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 205
    .local v6, "var7":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v6, v10, v10, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 206
    new-instance v7, Landroid/text/style/ImageSpan;

    invoke-direct {v7, v6, v11}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-interface {v4, v7, v10, v11, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object v7, v5

    .line 207
    check-cast v7, Landroid/text/SpannableStringBuilder;

    const-string v8, "\u00a0"

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v7, v5

    .line 208
    check-cast v7, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 210
    .end local v4    # "var5":Landroid/text/Spannable;
    .end local v5    # "var6":Landroid/text/SpannableStringBuilder;
    .end local v6    # "var7":Landroid/graphics/drawable/Drawable;
    :cond_1
    const v7, 0x7f020101

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 211
    const v7, 0x7f100106

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 212
    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter;->this$0:Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;

    invoke-virtual {v7}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v7

    iget-object v8, v2, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$Item;->user_photo:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v8

    .line 214
    const v7, 0x7f100105

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 215
    iget-object v7, v2, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$Item;->id:Ljava/lang/Long;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "id":Ljava/lang/String;
    const v7, 0x7f100264

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 217
    .local v0, "cancel":Landroid/widget/ImageView;
    new-instance v7, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter$1;

    invoke-direct {v7, p0, v1, v0}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter$1;-><init>(Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter;->this$0:Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;

    invoke-virtual {v7}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020144

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 225
    .local v3, "remove":Landroid/graphics/drawable/Drawable;
    new-instance v7, Landroid/graphics/LightingColorFilter;

    const v8, -0x54504d

    invoke-direct {v7, v10, v8}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 226
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    new-instance v7, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter$2;

    invoke-direct {v7, p0, v1}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter$2;-><init>(Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter;Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    return-object p2
.end method
