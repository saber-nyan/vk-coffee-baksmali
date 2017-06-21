.class Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$ImportTypesImageAdapter;
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
    name = "ImportTypesImageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)V
    .locals 0

    .prologue
    .line 905
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$ImportTypesImageAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;

    .prologue
    .line 905
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$ImportTypesImageAdapter;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$ImportTypesImageAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->access$1500(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 914
    const/4 v0, 0x0

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 920
    const/4 v0, 0x0

    return-object v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 927
    return-void
.end method
