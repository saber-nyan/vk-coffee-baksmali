.class public Lcom/vkcoffee/android/data/Friends$Folder;
.super Ljava/lang/Object;
.source "Friends.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/data/Friends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Folder"
.end annotation


# instance fields
.field public id:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/vkcoffee/android/data/Friends$Folder;->name:Ljava/lang/String;

    return-object v0
.end method
