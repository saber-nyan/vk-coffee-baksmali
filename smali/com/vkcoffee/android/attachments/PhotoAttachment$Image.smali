.class public Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;
.super Ljava/lang/Object;
.source "PhotoAttachment.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/attachments/PhotoAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Image"
.end annotation


# instance fields
.field public height:I

.field public type:C

.field public url:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    return-void
.end method

.method public constructor <init>(CLjava/lang/String;II)V
    .locals 0
    .param p1, "type"    # C
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput-char p1, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->type:C

    .line 344
    iput-object p2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->url:Ljava/lang/String;

    .line 345
    iput p3, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->width:I

    .line 346
    iput p4, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->height:I

    .line 347
    return-void
.end method
