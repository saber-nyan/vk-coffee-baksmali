.class Lcom/vkcoffee/android/ui/CompoundRadioGroup$1;
.super Ljava/lang/Object;
.source "CompoundRadioGroup.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/CompoundRadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/CompoundRadioGroup;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/CompoundRadioGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/CompoundRadioGroup;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/vkcoffee/android/ui/CompoundRadioGroup$1;->this$0:Lcom/vkcoffee/android/ui/CompoundRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/view/View;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/view/View;
    .param p2, "isChecked"    # Z

    .prologue
    .line 30
    if-eqz p2, :cond_1

    .line 31
    iget-object v1, p0, Lcom/vkcoffee/android/ui/CompoundRadioGroup$1;->this$0:Lcom/vkcoffee/android/ui/CompoundRadioGroup;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->access$002(Lcom/vkcoffee/android/ui/CompoundRadioGroup;I)I

    .line 32
    iget-object v1, p0, Lcom/vkcoffee/android/ui/CompoundRadioGroup$1;->this$0:Lcom/vkcoffee/android/ui/CompoundRadioGroup;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->access$100(Lcom/vkcoffee/android/ui/CompoundRadioGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 33
    .local v0, "view":Landroid/view/View;
    if-eq p1, v0, :cond_0

    .line 34
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "view":Landroid/view/View;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/ui/CompoundRadioGroup$1;->this$0:Lcom/vkcoffee/android/ui/CompoundRadioGroup;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->access$200(Lcom/vkcoffee/android/ui/CompoundRadioGroup;)Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 39
    iget-object v1, p0, Lcom/vkcoffee/android/ui/CompoundRadioGroup$1;->this$0:Lcom/vkcoffee/android/ui/CompoundRadioGroup;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->access$200(Lcom/vkcoffee/android/ui/CompoundRadioGroup;)Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;

    move-result-object v2

    move-object v1, p1

    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    invoke-interface {v2, p1, v1}, Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;->onCheckedChanged(Landroid/view/View;Z)V

    .line 41
    :cond_2
    return-void
.end method
