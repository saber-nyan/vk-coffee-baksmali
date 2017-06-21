.class Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder$1;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 297
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->access$1(Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioFile;

    invoke-static {v1, v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->access$2(Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;Lcom/vkcoffee/android/AudioFile;)V

    .line 298
    return-void
.end method
