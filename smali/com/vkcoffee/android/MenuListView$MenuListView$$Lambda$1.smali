.class public Lcom/vkcoffee/android/MenuListView$MenuListView$$Lambda$1;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/MenuListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuListView$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/MenuListView;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/MenuListView;)V
    .locals 0
    .param p1, "menuListView"    # Lcom/vkcoffee/android/MenuListView;

    .prologue
    .line 1875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1876
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$MenuListView$$Lambda$1;->arg$1:Lcom/vkcoffee/android/MenuListView;

    .line 1877
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/MenuListView;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "menuListView"    # Lcom/vkcoffee/android/MenuListView;

    .prologue
    .line 1880
    new-instance v0, Lcom/vkcoffee/android/MenuListView$MenuListView$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/MenuListView$MenuListView$$Lambda$1;-><init>(Lcom/vkcoffee/android/MenuListView;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuListView$$Lambda$1;->arg$1:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/MenuListView;->lambda$init$618(Landroid/view/View;)V

    .line 1885
    return-void
.end method
