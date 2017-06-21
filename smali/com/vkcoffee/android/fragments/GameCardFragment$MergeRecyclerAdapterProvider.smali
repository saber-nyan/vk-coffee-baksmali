.class Lcom/vkcoffee/android/fragments/GameCardFragment$MergeRecyclerAdapterProvider;
.super Lme/grishka/appkit/utils/MergeRecyclerAdapter;
.source "GameCardFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/GameCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MergeRecyclerAdapterProvider"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 762
    invoke-direct {p0}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlockType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 765
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/GameCardFragment$MergeRecyclerAdapterProvider;->getAdapterForPosition(I)Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/GameCardFragment$MergeRecyclerAdapterProvider;->getAdapterPosition(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;->getBlockType(I)I

    move-result v0

    return v0
.end method
