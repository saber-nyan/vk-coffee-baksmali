.class Lcom/vk/attachpicker/AttachActivity$FragmentAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "AttachActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/AttachActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FragmentAdapter"
.end annotation


# instance fields
.field private allEnabled:Z

.field private fragmentHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/vk/attachpicker/AttachActivity;


# direct methods
.method public constructor <init>(Lcom/vk/attachpicker/AttachActivity;Landroid/app/FragmentManager;)V
    .locals 1
    .param p2, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/vk/attachpicker/AttachActivity$FragmentAdapter;->this$0:Lcom/vk/attachpicker/AttachActivity;

    .line 583
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 580
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/AttachActivity$FragmentAdapter;->fragmentHashMap:Ljava/util/HashMap;

    .line 586
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vk/attachpicker/AttachActivity$FragmentAdapter;->allEnabled:Z

    .line 584
    return-void
.end method


# virtual methods
.method public ensureEnableAll()V
    .locals 1

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/vk/attachpicker/AttachActivity$FragmentAdapter;->allEnabled:Z

    if-nez v0, :cond_0

    .line 591
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/AttachActivity$FragmentAdapter;->allEnabled:Z

    .line 592
    invoke-virtual {p0}, Lcom/vk/attachpicker/AttachActivity$FragmentAdapter;->notifyDataSetChanged()V

    .line 594
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 612
    iget-boolean v0, p0, Lcom/vk/attachpicker/AttachActivity$FragmentAdapter;->allEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity$FragmentAdapter;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v0}, Lcom/vk/attachpicker/AttachActivity;->access$2000(Lcom/vk/attachpicker/AttachActivity;)Lcom/vk/attachpicker/adapter/TabsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/attachpicker/adapter/TabsAdapter;->getItemCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getFragment(I)Landroid/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 616
    iget-object v1, p0, Lcom/vk/attachpicker/AttachActivity$FragmentAdapter;->fragmentHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 617
    .local v0, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Fragment;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    goto :goto_0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 599
    const/4 v1, 0x0

    .line 601
    .local v1, "fragment":Landroid/app/Fragment;
    :try_start_0
    iget-object v2, p0, Lcom/vk/attachpicker/AttachActivity$FragmentAdapter;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v2}, Lcom/vk/attachpicker/AttachActivity;->access$2000(Lcom/vk/attachpicker/AttachActivity;)Lcom/vk/attachpicker/adapter/TabsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/adapter/TabsAdapter;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;

    iget-object v2, v2, Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;->fragmentFactoryMethod:Lcom/vkcoffee/android/functions/F0;

    invoke-interface {v2}, Lcom/vkcoffee/android/functions/F0;->f()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fragment":Landroid/app/Fragment;
    check-cast v1, Landroid/app/Fragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    .restart local v1    # "fragment":Landroid/app/Fragment;
    iget-object v2, p0, Lcom/vk/attachpicker/AttachActivity$FragmentAdapter;->fragmentHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    return-object v1

    .line 602
    .end local v1    # "fragment":Landroid/app/Fragment;
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
