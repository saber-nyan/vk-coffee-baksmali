.class Lcom/vkcoffee/android/ui/WriteBar$9;
.super Landroid/widget/BaseAdapter;
.source "WriteBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/WriteBar;->openAttachMenu(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/WriteBar;

.field final synthetic val$items:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/WriteBar;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/WriteBar;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/vkcoffee/android/ui/WriteBar$9;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/WriteBar$9;->val$items:Ljava/util/List;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar$9;->val$items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/vkcoffee/android/ui/WriteBar$MenuItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 421
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar$9;->val$items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/WriteBar$MenuItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/WriteBar$9;->getItem(I)Lcom/vkcoffee/android/ui/WriteBar$MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 426
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar$9;->val$items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/WriteBar$MenuItem;

    iget v0, v0, Lcom/vkcoffee/android/ui/WriteBar$MenuItem;->id:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 431
    if-nez p2, :cond_0

    .line 432
    iget-object v1, p0, Lcom/vkcoffee/android/ui/WriteBar$9;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0300c3

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 434
    :cond_0
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/WriteBar$9;->getItem(I)Lcom/vkcoffee/android/ui/WriteBar$MenuItem;

    move-result-object v0

    .line 435
    .local v0, "item":Lcom/vkcoffee/android/ui/WriteBar$MenuItem;
    const v1, 0x7f100274

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget v2, v0, Lcom/vkcoffee/android/ui/WriteBar$MenuItem;->icon:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 436
    const v1, 0x7f100275

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/vkcoffee/android/ui/WriteBar$MenuItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    return-object p2
.end method
