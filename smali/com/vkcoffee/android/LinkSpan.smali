.class public Lcom/vkcoffee/android/LinkSpan;
.super Landroid/text/style/CharacterStyle;
.source "LinkSpan.java"


# static fields
.field private static final DEFAULT_COLOR:I


# instance fields
.field private color:I

.field private link:Ljava/lang/String;

.field private final listReferrer:Ljava/lang/String;

.field private final postId:Ljava/lang/String;

.field private referrerPost:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    sput v0, Lcom/vkcoffee/android/LinkSpan;->DEFAULT_COLOR:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "l"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/vkcoffee/android/LinkSpan;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "l"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "listReferrer"    # Ljava/lang/String;
    .param p4, "postId"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 15
    sget v0, Lcom/vkcoffee/android/LinkSpan;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/vkcoffee/android/LinkSpan;->color:I

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/LinkSpan;->referrerPost:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/vkcoffee/android/LinkSpan;->link:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/vkcoffee/android/LinkSpan;->referrerPost:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/vkcoffee/android/LinkSpan;->listReferrer:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/vkcoffee/android/LinkSpan;->postId:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/vkcoffee/android/LinkSpan;->color:I

    return v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkcoffee/android/LinkSpan;->link:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vkcoffee/android/LinkSpan;->link:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 48
    iget-object v1, p0, Lcom/vkcoffee/android/LinkSpan;->referrerPost:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 49
    const-string/jumbo v1, "post_link_click"

    invoke-static {v1}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->collapse()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->unique()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    const-string/jumbo v2, "post_ids"

    iget-object v3, p0, Lcom/vkcoffee/android/LinkSpan;->referrerPost:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->commit()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/LinkSpan;->listReferrer:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 52
    const-string/jumbo v1, "post_interaction"

    invoke-static {v1}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    const-string/jumbo v2, "post_id"

    iget-object v3, p0, Lcom/vkcoffee/android/LinkSpan;->postId:Ljava/lang/String;

    .line 53
    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    const-string/jumbo v2, "action"

    const-string/jumbo v3, "open_link"

    .line 54
    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    const-string/jumbo v2, "ref"

    iget-object v3, p0, Lcom/vkcoffee/android/LinkSpan;->listReferrer:Ljava/lang/String;

    .line 55
    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->commit()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 58
    :cond_1
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "c"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/vkcoffee/android/LinkSpan;->color:I

    .line 33
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "tp"    # Landroid/text/TextPaint;

    .prologue
    .line 41
    iget v0, p0, Lcom/vkcoffee/android/LinkSpan;->color:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 42
    return-void
.end method
