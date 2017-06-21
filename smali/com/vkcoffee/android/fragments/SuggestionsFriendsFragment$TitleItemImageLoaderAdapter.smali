.class Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$TitleItemImageLoaderAdapter;
.super Ljava/lang/Object;
.source "SuggestionsFriendsFragment.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TitleItemImageLoaderAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)V
    .locals 0

    .prologue
    .line 967
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$TitleItemImageLoaderAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;

    .prologue
    .line 967
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$TitleItemImageLoaderAdapter;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 971
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$TitleItemImageLoaderAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$TitleItemImageLoaderAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

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

.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 976
    const/4 v0, 0x0

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 981
    const/4 v0, 0x0

    return-object v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 986
    return-void
.end method
