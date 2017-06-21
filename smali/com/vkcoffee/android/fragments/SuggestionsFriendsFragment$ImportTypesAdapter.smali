.class Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$ImportTypesAdapter;
.super Landroid/widget/BaseAdapter;
.source "SuggestionsFriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportTypesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)V
    .locals 0

    .prologue
    .line 863
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$ImportTypesAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;

    .prologue
    .line 863
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$ImportTypesAdapter;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$ImportTypesAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->access$1500(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 871
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 876
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$ImportTypesAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->access$1500(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;

    iget v0, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;->type:I

    const v1, 0x77359401

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v5, 0x7f1003c8

    .line 881
    move-object v1, p2

    .line 882
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 883
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$ImportTypesAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f03017b

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 884
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkcoffee/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 885
    const v2, 0x7f100264

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 887
    :cond_0
    if-nez p1, :cond_1

    .line 888
    const v2, 0x7f020088

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 895
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$ImportTypesAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->access$1500(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;

    .line 896
    .local v0, "item":Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;
    const v2, 0x7f100106

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v3, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;->titleRes:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 897
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v3, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;->descRes:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 899
    const v2, 0x7f100105

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget v3, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;->imgRes:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 901
    return-object v1

    .line 889
    .end local v0    # "item":Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$ImportTypesAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->access$1500(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_2

    .line 890
    const v2, 0x7f020086

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 892
    :cond_2
    const v2, 0x7f020087

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
