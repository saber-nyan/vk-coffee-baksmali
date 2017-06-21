.class Lcom/vkcoffee/android/fragments/BarcodeShareFragment$3;
.super Ljava/lang/Object;
.source "BarcodeShareFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->initCamera(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/BarcodeShareFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/BarcodeShareFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/BarcodeShareFragment;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment$3;->this$0:Lcom/vkcoffee/android/fragments/BarcodeShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment$3;->this$0:Lcom/vkcoffee/android/fragments/BarcodeShareFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->dismiss()V

    .line 174
    return-void
.end method
