.class public Lcom/vkcoffee/android/fragments/SuggestionsFragment$UsersAdapter;
.super Landroid/widget/BaseAdapter;
.source "SuggestionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/SuggestionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UsersAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;


# direct methods
.method protected constructor <init>(Lcom/vkcoffee/android/fragments/SuggestionsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$UsersAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$UsersAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$UsersAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 219
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$UsersAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iget v0, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v10, 0x7f1003c8

    const v9, 0x7f100105

    const/4 v5, 0x1

    const/4 v6, 0x0

    const v8, 0x7f100264

    .line 224
    move-object v2, p2

    .line 225
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_0

    .line 226
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$UsersAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f03017b

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 227
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkcoffee/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 228
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/vkcoffee/android/fragments/SuggestionsFragment$UsersAdapter$1;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment$UsersAdapter$1;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFragment$UsersAdapter;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    :cond_0
    if-nez p1, :cond_2

    .line 237
    const v3, 0x7f020088

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 244
    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$UsersAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .line 245
    .local v1, "u":Lcom/vkcoffee/android/UserProfile;
    const v3, 0x7f100106

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v1, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$UsersAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    iget-object v4, v1, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 249
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$UsersAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    iget-object v4, v4, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    iget-object v7, v1, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 254
    :goto_1
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 255
    iget v3, v1, Lcom/vkcoffee/android/UserProfile;->online:I

    if-nez v3, :cond_6

    iget-boolean v0, v1, Lcom/vkcoffee/android/UserProfile;->isFriend:Z

    .line 256
    .local v0, "added":Z
    :goto_2
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-nez v0, :cond_1

    iget-boolean v4, v1, Lcom/vkcoffee/android/UserProfile;->isFriend:Z

    if-eqz v4, :cond_8

    :cond_1
    const v4, 0x7f02022b

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v4, v1, Lcom/vkcoffee/android/UserProfile;->isFriend:Z

    if-nez v4, :cond_9

    :goto_4
    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 259
    return-object v2

    .line 238
    .end local v0    # "added":Z
    .end local v1    # "u":Lcom/vkcoffee/android/UserProfile;
    :cond_2
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$UsersAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_3

    .line 239
    const v3, 0x7f020086

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 241
    :cond_3
    const v3, 0x7f020087

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 251
    .restart local v1    # "u":Lcom/vkcoffee/android/UserProfile;
    :cond_4
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget v4, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-gez v4, :cond_5

    const v4, 0x7f020100

    :goto_5
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    const v4, 0x7f0202f2

    goto :goto_5

    .line 255
    :cond_6
    iget v3, v1, Lcom/vkcoffee/android/UserProfile;->online:I

    if-lez v3, :cond_7

    move v0, v5

    goto :goto_2

    :cond_7
    move v0, v6

    goto :goto_2

    .line 256
    .restart local v0    # "added":Z
    :cond_8
    const v4, 0x7f020228

    goto :goto_3

    :cond_9
    move v5, v6

    .line 257
    goto :goto_4
.end method
