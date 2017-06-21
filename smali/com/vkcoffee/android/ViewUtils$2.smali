.class final Lcom/vkcoffee/android/ViewUtils$2;
.super Lcom/vkcoffee/android/ui/drawables/TypingDrawable;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ViewUtils;->getTypingText(Landroid/content/Context;ILjava/util/List;Landroid/util/SparseArray;Lcom/vkcoffee/android/functions/VoidF0;I)Landroid/text/SpannableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$f:Lcom/vkcoffee/android/functions/VoidF0;


# direct methods
.method constructor <init>(ILcom/vkcoffee/android/functions/VoidF0;)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 283
    iput-object p2, p0, Lcom/vkcoffee/android/ViewUtils$2;->val$f:Lcom/vkcoffee/android/functions/VoidF0;

    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->invalidateSelf()V

    .line 287
    iget-object v0, p0, Lcom/vkcoffee/android/ViewUtils$2;->val$f:Lcom/vkcoffee/android/functions/VoidF0;

    invoke-interface {v0}, Lcom/vkcoffee/android/functions/VoidF0;->f()V

    .line 288
    return-void
.end method
