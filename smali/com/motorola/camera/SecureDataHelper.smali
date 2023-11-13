.class public final Lcom/motorola/camera/SecureDataHelper;
.super Ljava/lang/Object;
.source "SecureDataHelper.java"


# static fields
.field public static sInstance:Lcom/motorola/camera/SecureDataHelper;


# instance fields
.field public final mSecureDataList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/util/LinkedList;

    return-void
.end method

.method public static getInstance()Lcom/motorola/camera/SecureDataHelper;
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/SecureDataHelper;->sInstance:Lcom/motorola/camera/SecureDataHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/camera/SecureDataHelper;

    invoke-direct {v0}, Lcom/motorola/camera/SecureDataHelper;-><init>()V

    sput-object v0, Lcom/motorola/camera/SecureDataHelper;->sInstance:Lcom/motorola/camera/SecureDataHelper;

    .line 2
    :cond_0
    sget-object v0, Lcom/motorola/camera/SecureDataHelper;->sInstance:Lcom/motorola/camera/SecureDataHelper;

    return-object v0
.end method
