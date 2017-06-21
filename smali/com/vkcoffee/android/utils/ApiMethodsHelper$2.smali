.class final Lcom/vkcoffee/android/utils/ApiMethodsHelper$2;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "ApiMethodsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/utils/ApiMethodsHelper;->lambda$removeUserFromChat$721(IILandroid/content/Context;Lcom/vkcoffee/android/functions/VoidF1;Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cap$1:I

.field final synthetic val$cap$3:Lcom/vkcoffee/android/functions/VoidF1;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/vkcoffee/android/functions/VoidF1;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    iput-object p2, p0, Lcom/vkcoffee/android/utils/ApiMethodsHelper$2;->val$cap$3:Lcom/vkcoffee/android/functions/VoidF1;

    iput p3, p0, Lcom/vkcoffee/android/utils/ApiMethodsHelper$2;->val$cap$1:I

    invoke-direct {p0, p1}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ApiMethodsHelper$2;->val$cap$3:Lcom/vkcoffee/android/functions/VoidF1;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ApiMethodsHelper$2;->val$cap$3:Lcom/vkcoffee/android/functions/VoidF1;

    iget v1, p0, Lcom/vkcoffee/android/utils/ApiMethodsHelper$2;->val$cap$1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/functions/VoidF1;->f(Ljava/lang/Object;)V

    .line 47
    :cond_0
    return-void
.end method
