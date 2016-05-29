.class Lcom/android/nfc/QSecureElementManager$OpenSecureElement;
.super Ljava/lang/Object;
.source "QSecureElementManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/QSecureElementManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenSecureElement"
.end annotation


# instance fields
.field public binder:Landroid/os/IBinder;

.field public handle:I

.field public pid:I

.field final synthetic this$0:Lcom/android/nfc/QSecureElementManager;


# direct methods
.method public constructor <init>(Lcom/android/nfc/QSecureElementManager;IILandroid/os/IBinder;)V
    .locals 0
    .param p2, "pid"    # I
    .param p3, "handle"    # I
    .param p4, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/nfc/QSecureElementManager$OpenSecureElement;->this$0:Lcom/android/nfc/QSecureElementManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput p2, p0, Lcom/android/nfc/QSecureElementManager$OpenSecureElement;->pid:I

    .line 251
    iput p3, p0, Lcom/android/nfc/QSecureElementManager$OpenSecureElement;->handle:I

    .line 252
    iput-object p4, p0, Lcom/android/nfc/QSecureElementManager$OpenSecureElement;->binder:Landroid/os/IBinder;

    .line 253
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager$OpenSecureElement;->this$0:Lcom/android/nfc/QSecureElementManager;

    # getter for: Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;
    invoke-static {v0}, Lcom/android/nfc/QSecureElementManager;->access$100(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/NfcService;

    move-result-object v1

    monitor-enter v1

    .line 257
    :try_start_0
    const-string v0, "nfc:QSecureElementManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tracked app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/QSecureElementManager$OpenSecureElement;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " died"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/QSecureElementManager$OpenSecureElement;->pid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager$OpenSecureElement;->this$0:Lcom/android/nfc/QSecureElementManager;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/nfc/QSecureElementManager$OpenSecureElement;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v2, v3}, Lcom/android/nfc/QSecureElementManager;->_nfcEeClose(ILandroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 263
    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 261
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/QSecureElementManager$OpenSecureElement;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " handle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/QSecureElementManager$OpenSecureElement;->handle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
