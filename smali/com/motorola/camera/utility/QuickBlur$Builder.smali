.class public final Lcom/motorola/camera/utility/QuickBlur$Builder;
.super Ljava/lang/Object;
.source "QuickBlur.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/utility/QuickBlur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/utility/QuickBlur;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/utility/QuickBlur;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/utility/QuickBlur$Builder;->this$0:Lcom/motorola/camera/utility/QuickBlur;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p1, Lcom/motorola/camera/utility/QuickBlur;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final blur()Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/utility/QuickBlur$Builder;->this$0:Lcom/motorola/camera/utility/QuickBlur;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/utility/QuickBlur;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 3
    iget v1, p0, Lcom/motorola/camera/utility/QuickBlur;->mRadius:I

    if-eqz v1, :cond_2

    const/16 v2, 0x19

    if-gt v1, v2, :cond_2

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/utility/QuickBlur;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x3e4ccccd

    .line 6
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-lez p0, :cond_1

    if-gtz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 9
    invoke-static {v0, p0, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 10
    invoke-static {v2}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0

    .line 11
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    .line 12
    invoke-static {p0, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v2

    .line 13
    invoke-static {p0, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v3

    .line 14
    invoke-virtual {v3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    .line 15
    invoke-static {p0, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v4

    .line 16
    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    int-to-float v1, v1

    .line 17
    invoke-virtual {v2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 18
    invoke-virtual {v2, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 19
    invoke-virtual {v4, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 20
    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    .line 21
    invoke-virtual {v4}, Landroid/renderscript/Allocation;->destroy()V

    .line 22
    invoke-virtual {v2}, Landroid/renderscript/BaseObj;->destroy()V

    .line 23
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "QuickBlur"

    const-string v1, "rsBlur: width and height must be > 0"

    .line 24
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0

    .line 25
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "radius must between  0 < r <= 25 "

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Bitmap can not be null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
