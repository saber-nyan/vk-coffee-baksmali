.class Lcom/vkcoffee/android/MenuListView$11;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MenuListView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/MenuListView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/MenuListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$11;->this$0:Lcom/vkcoffee/android/MenuListView;

    .line 1537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/MenuListView$11;)Lcom/vkcoffee/android/MenuListView;
    .locals 1

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$11;->this$0:Lcom/vkcoffee/android/MenuListView;

    return-object v0
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$11;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/MenuListView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1540
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$11;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/MenuListView;->prepare()V

    .line 1541
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$11;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f10001b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/vkcoffee/android/MenuListView$11$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/MenuListView$11$1;-><init>(Lcom/vkcoffee/android/MenuListView$11;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 1550
    const/4 v0, 0x1

    return v0
.end method
