.class final synthetic Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$27;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

.field private final arg$2:Landroid/graphics/Bitmap;

.field private final arg$3:Landroid/support/v7/widget/Toolbar;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Landroid/graphics/Bitmap;Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$27;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$27;->arg$2:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$27;->arg$3:Landroid/support/v7/widget/Toolbar;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Landroid/graphics/Bitmap;Landroid/support/v7/widget/Toolbar;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$27;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$27;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Landroid/graphics/Bitmap;Landroid/support/v7/widget/Toolbar;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$27;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$27;->arg$2:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$27;->arg$3:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->lambda$null$411(Landroid/graphics/Bitmap;Landroid/support/v7/widget/Toolbar;)V

    return-void
.end method
