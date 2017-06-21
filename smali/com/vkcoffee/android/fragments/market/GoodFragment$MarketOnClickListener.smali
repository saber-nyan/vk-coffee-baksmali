.class public Lcom/vkcoffee/android/fragments/market/GoodFragment$MarketOnClickListener;
.super Ljava/lang/Object;
.source "GoodFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/market/GoodFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MarketOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/market/GoodFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$MarketOnClickListener;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGood()Lcom/vkcoffee/android/data/Good;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$MarketOnClickListener;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$100(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lcom/vkcoffee/android/data/Good;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 182
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$MarketOnClickListener;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$100(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lcom/vkcoffee/android/data/Good;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$MarketOnClickListener;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$200(Lcom/vkcoffee/android/fragments/market/GoodFragment;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$MarketOnClickListener;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$100(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lcom/vkcoffee/android/data/Good;

    move-result-object v0

    iget v0, v0, Lcom/vkcoffee/android/data/Good;->availability:I

    if-nez v0, :cond_0

    .line 183
    const-string/jumbo v0, "market_contact"

    invoke-static {v0}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string/jumbo v1, "item_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$MarketOnClickListener;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    .line 184
    invoke-static {v3}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$100(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lcom/vkcoffee/android/data/Good;

    move-result-object v3

    iget v3, v3, Lcom/vkcoffee/android/data/Good;->owner_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$MarketOnClickListener;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$100(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lcom/vkcoffee/android/data/Good;

    move-result-object v3

    iget v3, v3, Lcom/vkcoffee/android/data/Good;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string/jumbo v1, "action"

    const-string/jumbo v2, "start"

    .line 185
    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->commit()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 186
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$MarketOnClickListener;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$200(Lcom/vkcoffee/android/fragments/market/GoodFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$MarketOnClickListener;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$400(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$MarketOnClickListener;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$300(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->setPhoto(Ljava/lang/CharSequence;)Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/os/Parcelable;

    new-instance v2, Lcom/vkcoffee/android/attachments/MarketAttachment;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$MarketOnClickListener;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    .line 187
    invoke-static {v3}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$100(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lcom/vkcoffee/android/data/Good;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/vkcoffee/android/attachments/MarketAttachment;-><init>(Lcom/vkcoffee/android/data/Good;Z)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->setAttachments([Landroid/os/Parcelable;)Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->go(Landroid/content/Context;)V

    .line 189
    :cond_0
    return-void
.end method
