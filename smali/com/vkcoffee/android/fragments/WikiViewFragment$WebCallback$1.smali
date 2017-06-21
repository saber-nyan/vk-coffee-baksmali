.class Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback$1;
.super Ljava/lang/Object;
.source "WikiViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback;->openPhotos([Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback;

.field private final synthetic val$pos:I

.field private final synthetic val$urls:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback;[Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback$1;->this$1:Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback$1;->val$urls:[Ljava/lang/String;

    iput p3, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback$1;->val$pos:I

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 86
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v2, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Photo;>;"
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback$1;->val$urls:[Ljava/lang/String;

    array-length v7, v6

    move v4, v5

    :goto_0
    if-lt v4, v7, :cond_0

    .line 95
    new-instance v4, Lcom/vkcoffee/android/PhotoViewer;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback$1;->this$1:Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback;->access$1(Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback;)Lcom/vkcoffee/android/fragments/WikiViewFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget v6, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback$1;->val$pos:I

    new-instance v7, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback$1$1;

    invoke-direct {v7, p0}, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback$1$1;-><init>(Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback$1;)V

    invoke-direct {v4, v5, v2, v6, v7}, Lcom/vkcoffee/android/PhotoViewer;-><init>(Landroid/app/Activity;Ljava/util/List;ILcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;)V

    .line 108
    invoke-virtual {v4}, Lcom/vkcoffee/android/PhotoViewer;->show()V

    .line 109
    return-void

    .line 87
    :cond_0
    aget-object v3, v6, v4

    .line 88
    .local v3, "url":Ljava/lang/String;
    new-instance v1, Lcom/vkcoffee/android/Photo;

    invoke-direct {v1}, Lcom/vkcoffee/android/Photo;-><init>()V

    .line 89
    .local v1, "p":Lcom/vkcoffee/android/Photo;
    new-instance v0, Lcom/vkcoffee/android/Photo$Image;

    invoke-direct {v0}, Lcom/vkcoffee/android/Photo$Image;-><init>()V

    .line 90
    .local v0, "im":Lcom/vkcoffee/android/Photo$Image;
    const/16 v8, 0x78

    iput-char v8, v0, Lcom/vkcoffee/android/Photo$Image;->type:C

    .line 91
    const-string v8, "\\|"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v5

    iput-object v8, v0, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    .line 92
    iget-object v8, v1, Lcom/vkcoffee/android/Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
