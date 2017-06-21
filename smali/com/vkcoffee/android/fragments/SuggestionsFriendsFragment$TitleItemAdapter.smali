.class Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$TitleItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "SuggestionsFriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TitleItemAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)V
    .locals 0

    .prologue
    .line 931
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$TitleItemAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;

    .prologue
    .line 931
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$TitleItemAdapter;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 949
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 935
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$TitleItemAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$TitleItemAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "from_signup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 940
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 945
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 958
    if-nez p2, :cond_0

    .line 959
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$TitleItemAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0300bb

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 960
    .local v0, "txt":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$TitleItemAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    const v2, 0x7f080521

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 963
    .end local v0    # "txt":Landroid/widget/TextView;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 953
    const/4 v0, 0x0

    return v0
.end method
