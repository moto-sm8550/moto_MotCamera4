.class public final Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;
.super Ljava/lang/Object;
.source "SettingSoundPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/SettingSoundPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyLoader"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/SettingSoundPlayer;

    .line 2
    invoke-direct {v0}, Lcom/motorola/camera/ui/SettingSoundPlayer;-><init>()V

    .line 3
    sput-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer;

    return-void
.end method
