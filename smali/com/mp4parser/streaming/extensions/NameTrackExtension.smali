.class public Lcom/mp4parser/streaming/extensions/NameTrackExtension;
.super Ljava/lang/Object;
.source "NameTrackExtension.java"

# interfaces
.implements Lcom/mp4parser/streaming/TrackExtension;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/mp4parser/streaming/extensions/NameTrackExtension;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    new-instance v0, Lcom/mp4parser/streaming/extensions/NameTrackExtension;

    invoke-direct {v0}, Lcom/mp4parser/streaming/extensions/NameTrackExtension;-><init>()V

    .line 13
    .local v0, "nameTrackExtension":Lcom/mp4parser/streaming/extensions/NameTrackExtension;
    iput-object p0, v0, Lcom/mp4parser/streaming/extensions/NameTrackExtension;->name:Ljava/lang/String;

    .line 14
    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mp4parser/streaming/extensions/NameTrackExtension;->name:Ljava/lang/String;

    return-object v0
.end method
