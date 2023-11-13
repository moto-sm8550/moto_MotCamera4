.class public interface abstract Lcom/motorola/camera/PermissionsManager$PermissionResultCallback;
.super Ljava/lang/Object;
.source "PermissionsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/PermissionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PermissionResultCallback"
.end annotation


# virtual methods
.method public abstract onPermissionRequestResult(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method
