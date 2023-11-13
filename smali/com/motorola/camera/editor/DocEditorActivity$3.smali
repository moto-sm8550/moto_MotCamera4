.class public final Lcom/motorola/camera/editor/DocEditorActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "DocEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/editor/DocEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/editor/DocEditorActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/editor/DocEditorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$3;->this$0:Lcom/motorola/camera/editor/DocEditorActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$3;->this$0:Lcom/motorola/camera/editor/DocEditorActivity;

    sget p1, Lcom/motorola/camera/editor/DocEditorActivity;->$r8$clinit:I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->loadBitmap()V

    return-void
.end method
