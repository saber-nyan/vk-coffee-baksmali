.class public interface abstract Lru/mail/android/mytracker/providers/FPDataProvider;
.super Ljava/lang/Object;
.source "FPDataProvider.java"


# virtual methods
.method public abstract collectData(Landroid/content/Context;)V
.end method

.method public abstract putDataToBuilder(Lru/mail/android/mytracker/builders/JSONBuilder;)V
.end method

.method public abstract putDataToMap(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract storeData(Landroid/content/Context;)V
.end method
