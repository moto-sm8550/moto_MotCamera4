.class public final Lcom/motorola/camera/utility/AudioLensSwitchHelper$LazyLoader;
.super Ljava/lang/Object;
.source "AudioLensSwitchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/utility/AudioLensSwitchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyLoader"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/utility/AudioLensSwitchHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    invoke-direct {v0}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;-><init>()V

    sput-object v0, Lcom/motorola/camera/utility/AudioLensSwitchHelper$LazyLoader;->INSTANCE:Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    return-void
.end method
