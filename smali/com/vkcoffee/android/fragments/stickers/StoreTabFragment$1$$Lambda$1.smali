.class final synthetic Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment$1$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment$1$$Lambda$1;->arg$1:Landroid/view/View;

    return-void
.end method

.method public static lambdaFactory$(Landroid/view/View;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment$1$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment$1$$Lambda$1;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment$1$$Lambda$1;->arg$1:Landroid/view/View;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment$1;->lambda$onClick$613(Landroid/view/View;)V

    return-void
.end method
