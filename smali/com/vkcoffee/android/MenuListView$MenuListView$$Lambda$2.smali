.class public Lcom/vkcoffee/android/MenuListView$MenuListView$$Lambda$2;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/MenuListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuListView$$Lambda$2"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/MenuListView;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/MenuListView;)V
    .locals 0
    .param p1, "menuListView"    # Lcom/vkcoffee/android/MenuListView;

    .prologue
    .line 1890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1891
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$MenuListView$$Lambda$2;->arg$1:Lcom/vkcoffee/android/MenuListView;

    .line 1892
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/MenuListView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "menuListView"    # Lcom/vkcoffee/android/MenuListView;

    .prologue
    .line 1895
    new-instance v0, Lcom/vkcoffee/android/MenuListView$MenuListView$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/MenuListView$MenuListView$$Lambda$2;-><init>(Lcom/vkcoffee/android/MenuListView;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuListView$$Lambda$2;->arg$1:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/MenuListView;->lambda$onAttachedToWindow$619()V

    .line 1900
    return-void
.end method
