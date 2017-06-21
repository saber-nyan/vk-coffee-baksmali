.class public Lcom/googlecode/mp4parser/authoring/tracks/webvtt/sampleboxes/VTTAdditionalTextBox;
.super Lcom/googlecode/mp4parser/authoring/tracks/webvtt/sampleboxes/AbstractCueBox;
.source "VTTAdditionalTextBox.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    const-string/jumbo v0, "vtta"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/sampleboxes/AbstractCueBox;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method
