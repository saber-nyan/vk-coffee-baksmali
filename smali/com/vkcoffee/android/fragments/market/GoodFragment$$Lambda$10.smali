.class final synthetic Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/market/GoodFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/market/GoodFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$10;->arg$1:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Landroid/view/View$OnLayoutChangeListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$10;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$10;-><init>(Lcom/vkcoffee/android/fragments/market/GoodFragment;)V

    return-object v0
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 10

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$10;->arg$1:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->lambda$onViewCreated$212(Landroid/view/View;IIIIIIII)V

    return-void
.end method
