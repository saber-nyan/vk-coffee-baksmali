.class Lcom/vkcoffee/android/ui/SearchViewWrapper$4;
.super Ljava/lang/Object;
.source "SearchViewWrapper.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/SearchViewWrapper;-><init>(Landroid/app/Activity;Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/SearchViewWrapper;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/SearchViewWrapper;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$4;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    iput p2, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$4;->val$timeout:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v2, 0x0

    .line 141
    iget-object v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$4;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$100(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Landroid/view/View;

    move-result-object v3

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_3

    move v1, v2

    :goto_0
    invoke-static {v3, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 142
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v0, 0x1

    .line 143
    .local v0, "ns":Z
    :goto_1
    if-nez v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$4;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$200(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;->onQuerySubmitted(Ljava/lang/String;)V

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$4;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$200(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;->onQueryChanged(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$4;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$300(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$4;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$400(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$4;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$300(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 150
    :cond_1
    if-eqz v0, :cond_2

    .line 151
    iget-object v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$4;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {p0, p1}, Lcom/vkcoffee/android/ui/SearchViewWrapper$4$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/ui/SearchViewWrapper$4;Landroid/text/Editable;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$302(Lcom/vkcoffee/android/ui/SearchViewWrapper;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 155
    iget-object v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$4;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$400(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$4;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$300(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Ljava/lang/Runnable;

    move-result-object v2

    iget v3, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$4;->val$timeout:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 157
    :cond_2
    return-void

    .line 141
    .end local v0    # "ns":Z
    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    :cond_4
    move v0, v2

    .line 142
    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 132
    return-void
.end method

.method synthetic lambda$afterTextChanged$310(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$4;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$200(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;->onQueryConfirmed(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$4;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$302(Lcom/vkcoffee/android/ui/SearchViewWrapper;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 154
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 137
    return-void
.end method
