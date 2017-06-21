.class Lcom/vkcoffee/android/PhotoStatic$1;
.super Ljava/lang/Object;
.source "PhotoStatic.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/PhotoStatic;->delLoc(Landroid/view/Menu;ZLandroid/app/Activity;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$oid:I

.field private final synthetic val$pid:I


# direct methods
.method constructor <init>(IILandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/vkcoffee/android/PhotoStatic$1;->val$oid:I

    iput p2, p0, Lcom/vkcoffee/android/PhotoStatic$1;->val$pid:I

    iput-object p3, p0, Lcom/vkcoffee/android/PhotoStatic$1;->val$activity:Landroid/app/Activity;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "paramAnonymousMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 20
    new-instance v0, Lcom/vkcoffee/android/api/DeleteLocCoffee;

    iget v1, p0, Lcom/vkcoffee/android/PhotoStatic$1;->val$oid:I

    iget v2, p0, Lcom/vkcoffee/android/PhotoStatic$1;->val$pid:I

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/DeleteLocCoffee;-><init>(II)V

    new-instance v1, Lcom/vkcoffee/android/PhotoStatic$1$1;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoStatic$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoStatic$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2, v3}, Lcom/vkcoffee/android/PhotoStatic$1$1;-><init>(Lcom/vkcoffee/android/PhotoStatic$1;Landroid/content/Context;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/DeleteLocCoffee;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoStatic$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoStatic$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 26
    const/4 v0, 0x1

    return v0
.end method
